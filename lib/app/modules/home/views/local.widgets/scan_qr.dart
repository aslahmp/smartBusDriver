import 'package:driver/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../infastructure/utils/index.dart';

class ScanQr extends GetView<HomeController> {
  const ScanQr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: controller.scanQr,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: AppConstants.padding),
        padding: EdgeInsets.all(AppConstants.padding),
        decoration: BoxDecoration(
          color: AppColors.blue4,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: Colors.grey.shade300,
              spreadRadius: .5,
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(
              Icons.qr_code_scanner,
              color: AppColors.blue6,
            ),
            horizontalSpace(20),
            Text(
              "Scan Qr",
              style: AppTextStyles.regular.copyWith(
                color: AppColors.blue6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
