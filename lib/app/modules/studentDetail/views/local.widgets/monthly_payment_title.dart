import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './year_selection.dart';
import '../../../../../../infastructure/utils/index.dart';
import '../../controllers/student_detail_controller.dart';

class MonthlyPaymentTitle extends GetView<StudentDetailController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Fee Details',
                style: AppTextStyles.bold.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              YearSelection()
            ],
          ),
        ],
      ),
    );
  }
}
