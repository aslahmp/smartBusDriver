import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../infastructure/utils/index.dart';
import '../../../data/firbase/user/friebase_user.dart';
import '../../../routes/app_pages.dart';

class LoginMobileNumberController extends GetxController {
  //TODO: Implement LoginMobileNumberController

  var mobileNumberController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var userFirebase = FriebaseUser();
  var isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void submit() async {
    isLoading(true);
    if (formKey.currentState!.validate()) {
      var mobileNumberExist =
          await userFirebase.checkUserExist(mobileNumberController.text);
      if (mobileNumberExist) {
        // Get.toNamed(Routes.LOGIN_OTP);
      } else {
        Get.showSnackbar(GetSnackBar(
          messageText: Text(
            'User no found',
            style: AppTextStyles.regular.copyWith(color: AppColors.white),
          ),
          duration: Duration(seconds: 2),
        ));
      }
    }
    isLoading(false);
  }

  @override
  void onClose() {}
}
