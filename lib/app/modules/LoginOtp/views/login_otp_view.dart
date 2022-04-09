import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_otp_controller.dart';
import 'local.widgets/index.dart';

class LoginOtpView extends GetView<LoginOtpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ImageView(),
          EnterCodeText(),
          OtpPinField(),
          OtpSubmitButton(),
          OtpCancelButton(),
        ],
      ),
    ));
  }
}
