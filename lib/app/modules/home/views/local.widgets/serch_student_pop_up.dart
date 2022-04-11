import 'package:driver/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../infastructure/utils/index.dart';

class SerchStudentPopUp extends GetView<HomeController> {
  const SerchStudentPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Enter Student Id",
            style: AppTextStyles.regular
                .copyWith(color: AppColors.blue6, fontSize: 18),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.studentIdController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              IconButton(
                  onPressed: () {
                    if (controller.studentIdController.text != '') {
                      controller.gotSudentDetailPage(
                          controller.studentIdController.text);
                    } else {}
                  },
                  icon: Icon(Icons.search))
            ],
          ),
        ],
      ),
      margin: EdgeInsets.all(20),
      width: double.infinity,
    );
  }
}
