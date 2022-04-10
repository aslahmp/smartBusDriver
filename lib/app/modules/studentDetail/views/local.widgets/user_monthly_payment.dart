import 'package:driver/app/modules/studentDetail/views/local.widgets/payment_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/student_detail_controller.dart';

class UserMonthlyPayment extends GetView<StudentDetailController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Row(
            children: [
              Expanded(
                child: PaymentTile(
                  controller.getMonthName('jan'),
                  monthlyPayment: controller.paymentdetails.value.jan,
                ),
              ),
              Expanded(
                child: PaymentTile(
                  controller.getMonthName('feb'),
                  monthlyPayment: controller.paymentdetails.value.feb,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: PaymentTile(
                  controller.getMonthName('mar'),
                  monthlyPayment: controller.paymentdetails.value.mar,
                ),
              ),
              Expanded(
                child: PaymentTile(
                  controller.getMonthName('apr'),
                  monthlyPayment: controller.paymentdetails.value.apr,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: PaymentTile(
                  controller.getMonthName('may'),
                  monthlyPayment: controller.paymentdetails.value.may,
                ),
              ),
              Expanded(
                child: PaymentTile(
                  controller.getMonthName('jun'),
                  monthlyPayment: controller.paymentdetails.value.jun,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: PaymentTile(
                  controller.getMonthName('jul'),
                  monthlyPayment: controller.paymentdetails.value.jul,
                ),
              ),
              Expanded(
                child: PaymentTile(
                  controller.getMonthName('aug'),
                  monthlyPayment: controller.paymentdetails.value.aug,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: PaymentTile(
                  controller.getMonthName('sep'),
                  monthlyPayment: controller.paymentdetails.value.sep,
                ),
              ),
              Expanded(
                child: PaymentTile(
                  controller.getMonthName('oct'),
                  monthlyPayment: controller.paymentdetails.value.oct,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: PaymentTile(
                  controller.getMonthName('nov'),
                  monthlyPayment: controller.paymentdetails.value.nov,
                ),
              ),
              Expanded(
                child: PaymentTile(
                  controller.getMonthName('dec'),
                  monthlyPayment: controller.paymentdetails.value.dec,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
