import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../infastructure/utils/index.dart';
import '../../controllers/login_mobile_number_controller.dart';

class MobileNumberFeeld extends GetView<LoginMobileNumberController> {
  const MobileNumberFeeld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 17, right: 17, top: 20, bottom: 18),
      child: TextFormField(
        validator: Validators.mobileNumberValidator,
        controller: controller.mobileNumberController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.phone,
        decoration: AppInputDeceration.defalt.copyWith(
          hintText: 'Mobile Number',
          labelText: 'Mobile Number',
        ),
      ),
    );
  }
}
