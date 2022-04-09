import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infastructure/utils/index.dart';
import '../../controllers/login_otp_controller.dart';

class OtpCancelButton extends GetView<LoginOtpController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: Get.height > 700 ? 90 : 60),
      child: TextButton(
          onPressed: () => Get.back(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 8),
            child: Text(
              'Cancel',
              style: AppTextStyles.regular.copyWith(
                fontSize: 15,
                color: AppColors.white,
              ),
            ),
          ),
          style: AppConstants.buttonStyle.copyWith(
              backgroundColor: MaterialStateProperty.all<Color>(
                  AppColors.blue2.withOpacity(.4)))),
    );
  }
}
