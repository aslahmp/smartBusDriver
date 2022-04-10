import 'package:flutter/material.dart';

import '../../../../../../infastructure/utils/index.dart';
import '../../../../data/models/pament/payment/mothly_payment.model.dart';

class PaymentTile extends StatelessWidget {
  const PaymentTile(this.monthTitle, {Key? key, this.monthlyPayment})
      : super(key: key);
  final MothlyUserPaymentModel? monthlyPayment;
  final String monthTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            monthTitle,
            style: AppTextStyles.bold.copyWith(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            monthlyPayment != null ? '${monthlyPayment?.amunt}' : 'Not Paid',
            style: AppTextStyles.regular.copyWith(
                fontSize: 14,
                color:
                    monthlyPayment != null ? AppColors.green : AppColors.red),
          ),
        ],
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10)),
      // height: 50,
    );
  }
}
