import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infastructure/utils/index.dart';
import '../../controllers/login_mobile_number_controller.dart';

class SubmitButton extends GetView<LoginMobileNumberController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: double.infinity,
      // height: 50,
      child: Obx(() {
        return TextButton(
            onPressed: controller.isLoading.value ? null : controller.submit,
            child: controller.isLoading.value
                ? CircularProgressIndicator(
                    color: AppColors.white,
                  )
                : Padding(
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
            style: AppConstants.buttonStyle);
      }),
    );
  }
}
