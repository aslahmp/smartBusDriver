import 'package:driver/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../infastructure/utils/index.dart';

class WorkModeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: EdgeInsets.only(top: 15),
        height: 84,
        color: controller.isDriverEnable.value
            ? AppColors.lightBlue1
            : AppColors.red,
        child: Row(
          children: [
            SizedBox(
              width: 35,
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: controller.isDriverEnable.value
                  ? AppColors.white
                  : Colors.transparent,
              child: Icon(
                controller.isDriverEnable.value
                    ? Icons.location_on
                    : Icons.location_off,
                color: controller.isDriverEnable.value
                    ? AppColors.lightBlue1
                    : AppColors.white,
                size: 35,
              ),
            ),
            SizedBox(
              width: 18,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.isDriverEnable.value
                      ? "On work mode"
                      : "You are on off work mode !",
                  style: AppTextStyles.extraBold
                      .copyWith(color: AppColors.white, fontSize: 18),
                ),
                Text(
                  controller.isDriverEnable.value
                      ? "Updating.. live Location"
                      : "Go online to update live Location",
                  style: AppTextStyles.extraBold
                      .copyWith(color: AppColors.white, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
