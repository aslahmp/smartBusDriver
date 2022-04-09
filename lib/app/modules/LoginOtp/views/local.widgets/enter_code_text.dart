// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infastructure/utils/index.dart';
import '../../controllers/login_otp_controller.dart';

class EnterCodeText extends GetView<LoginOtpController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Text(
            'Enter the 6 Digit Code Sent ',
            style: AppTextStyles.bold.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.blue2),
          ),
          verticalSpace(8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'to You at ',
                style: AppTextStyles.bold.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blue2),
              ),
              Text(
                '+91 ${controller.mobileNumber.value}',
                style: AppTextStyles.bold.copyWith(
                  fontSize: 18,
                  color: AppColors.blue3,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
