import 'package:flutter/material.dart';

import '../../../../../infastructure/utils/index.dart';

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Smart Bus',
      style: AppTextStyles.extraBold.copyWith(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: AppColors.blue2,
      ),
    );
  }
}
