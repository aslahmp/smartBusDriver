import 'package:flutter/material.dart';

import '../../../../../infastructure/utils/index.dart';

class ScanQr extends StatelessWidget {
  const ScanQr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: AppConstants.padding),
      padding: EdgeInsets.all(AppConstants.padding),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightBlue1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.qr_code_scanner),
          horizontalSpace(20),
          Text(
            "Scan Qr",
            style: AppTextStyles.regular.copyWith(
              color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }
}
