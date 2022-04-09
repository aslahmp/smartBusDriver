// ignore_for_file: use_key_in_widget_constructors

import 'package:driver/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:get/get.dart';

import '../../../../../infastructure/utils/index.dart';

class DriverOnOffButtonAppBar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.padding),
      child: Obx(
        () => FlutterSwitch(
          onToggle: controller.updateDriverStatus,
          value: controller.isDriverEnable.value,
          toggleSize: 20,
          height: 23,
          width: 40,
          padding: 2.50,
          inactiveColor: AppColors.red,
          activeColor: AppColors.green,
        ),
      ),
    );
  }
}
