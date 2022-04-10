import 'package:get/get.dart';

import '../../../../infastructure/managers/index.dart';
import '../../../data/firbase/payment/get_payment_firbase.dart';
import '../../../data/models/pament/payment/yearly_payment.model.dart';
import '../../../data/models/student/student.dart';

class StudentDetailController extends GetxController {
  late StudentModel studentModel;
  var paymentdetails = YearlyUserPaymentModel().obs;
  var selectedYear = YearManager.currentYear.obs;
  var paymentFirbase = GetPaymentFirbase();
  @override
  void onInit() {
    studentModel = Get.arguments;
    getPaymentData();
    startYearLisern();
    super.onInit();
  }

  void startYearLisern() {
    selectedYear.listen((p0) {
      getPaymentData();
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  void getPaymentData() async {
    var result = await paymentFirbase.getUserYearPayment(
        userId: studentModel.id, year: selectedYear.value);
    if (result.isSuccess) {
      paymentdetails.value = YearlyUserPaymentModel.fromjson(result.success);
    } else {
      paymentdetails.value = YearlyUserPaymentModel();
    }
  }

  String getMonthName(String monthId) {
    return MonthManager.months
        .where((element) => element.id == monthId)
        .first
        .title;
  }

  void changeYear(int? year) {
    if (year != null) {
      selectedYear.value = year;
    }
  }

  @override
  void onClose() {}
}
