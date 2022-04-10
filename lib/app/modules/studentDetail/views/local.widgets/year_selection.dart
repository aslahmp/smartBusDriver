import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../infastructure/managers/index.dart';
import '../../controllers/student_detail_controller.dart';

class YearSelection extends GetView<StudentDetailController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return DropdownButton<int>(
          value: controller.selectedYear.value,
          underline: SizedBox(),
          items: YearManager.years()
              .map(
                (e) => DropdownMenuItem(
                  child: Text('$e'),
                  value: e,
                ),
              )
              .toList(),
          onChanged: controller.changeYear);
    });
  }
}
