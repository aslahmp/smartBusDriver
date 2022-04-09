import 'package:flutter/material.dart';

import '../../../../../infastructure/utils/index.dart';

class EnterMobileNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      margin: EdgeInsets.only(bottom: 20, top: 10),
      child: Text(
        'Enter Your Mobile Number to Login',
        textAlign: TextAlign.center,
        style: AppTextStyles.bold.copyWith(
          color: AppColors.blue2,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
    );
  }
}
