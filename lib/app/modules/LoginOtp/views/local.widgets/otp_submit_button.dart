import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infastructure/utils/index.dart';
import '../../controllers/login_otp_controller.dart';

class OtpSubmitButton extends GetView<LoginOtpController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, bottom: 15),
      child: Obx(
        () => controller.isLoading.value
            ? CircularProgressIndicator(
                color: AppColors.white,
              )
            : TextButton(
                onPressed:
                    controller.isLoading.value ? null : controller.submitOtp,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 8),
                  child: Text(
                    'Submit',
                    style: AppTextStyles.regular.copyWith(
                      fontSize: 15,
                      color: AppColors.white,
                    ),
                  ),
                ),
                style: AppConstants.buttonStyle),
      ),
    );
  }
}
