import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/firbase/auth/firbase_auth.dart';
import '../../../data/firbase/user/friebase_user.dart';
import '../../../routes/app_pages.dart';
import '../../LoginMobileNumber/controllers/login_mobile_number_controller.dart';

class LoginOtpController extends GetxController {
  var mobileNumber = ''.obs;
  var mobileNumberController = Get.find<LoginMobileNumberController>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final otp = TextEditingController();
  final _authFirebase = FirebaseAuthHelper();
  final _userFirebase = FriebaseUser();
  String? verificationId;
  final isLoading = false.obs;

  final _durationTimeOut = Duration(seconds: 60);
  final isCanResendCode = false.obs;
  final durationCountdown = 0.obs;
  // var isShowWrongOtpText = false.obs;
  @override
  void onInit() {
    mobileNumber.value = mobileNumberController.mobileNumberController.text;
    verifyPhoneNumber();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void verifyPhoneNumber() async {
    isLoading.value = true;

    isCanResendCode.value = false;
    await _authFirebase.sendSms(
      mobileNumber: mobileNumber.value,
      verificationFailed: (FirebaseAuthException e) async {
        isLoading.value = false;
        isCanResendCode.value = true;
        Get.snackbar(
          "Verification Failed",
          e.message ?? '',
          backgroundColor: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
      },
      codeSent: (verificationId, forceResendingToken) async {
        this.verificationId = verificationId;
        isLoading.value = false;
        _validateCountdownResendCode();
      },
    );
  }

  void _validateCountdownResendCode() {
    isCanResendCode.value = false;
    var maxDurationInSecond = _durationTimeOut.inSeconds;
    var currentDurationSecond = 0;
    durationCountdown.value = maxDurationInSecond;

    Timer.periodic(Duration(seconds: 1), (timer) {
      currentDurationSecond++;
      if (maxDurationInSecond - currentDurationSecond >= 0) {
        durationCountdown.value = maxDurationInSecond - currentDurationSecond;
      } else {
        isCanResendCode.value = true;
        timer.cancel();
      }
    });
  }

  void submitOtp() async {
    isLoading.value = true;
    if (formKey.currentState!.validate() && verificationId != null) {
      isLoading.value = true;
      var result = await _authFirebase.verifySmsCode(otp.text, verificationId!);
      isLoading.value = false;
      if (result.isSuccess) {
        await _userFirebase.setUser(mobileNumber.value);
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.snackbar(
          "Invalid Code",
          "Please enter the correct code",
          backgroundColor: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }
    isLoading.value = false;
  }

  @override
  void onClose() {}
}
