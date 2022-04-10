import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/student_detail_controller.dart';
import 'local.widgets/monthly_payment_title.dart';
import 'local.widgets/user_data_view.dart';
import 'local.widgets/user_monthly_payment.dart';

class StudentDetailView extends GetView<StudentDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.studentModel.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserDataView(),
            MonthlyPaymentTitle(),
            UserMonthlyPayment(),
          ],
        ),
      ),
    );
  }
}
