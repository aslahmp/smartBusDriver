import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/login_mobile_number_controller.dart';
import 'local.widgets/index.dart';

class LoginMobileNumberView extends GetView<LoginMobileNumberController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: controller.formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageView(),
            EnterMobileNumber(),
            MobileNumberFeeld(),
            SubmitButton(),
          ],
        ),
      ),
    ));
  }
}
