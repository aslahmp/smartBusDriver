import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

import '../../../data/firbase/driver/firbase_driver.dart';
import '../../../data/firbase/student/firebase_student.dart';
import '../../../data/models/driver/driver.model.dart';
import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  var isDriverEnable = false.obs;
  final driverFirbase = FirbaseDriver();
  final _studentFirebase = FirebaseStudent();
  late Rx<Driver> driver =
      Driver(id: '', name: '', phoneNumber: 0, email: '').obs;
  @override
  void onInit() {
    getDriver();
    super.onInit();
  }

  void scanQr() async {
    final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#2F6193', 'cancel', true, ScanMode.QR);
    if (qrCode != '-1') {
      var components = qrCode.split('&');
      if (components[0] == 'SmartBus') {
        gotSudentDetailPage(components[1]);
      } else {
        Get.showSnackbar(GetSnackBar(
          message: 'Invalid Qr Code',
          duration: Duration(seconds: 2),
        ));
      }
    }
  }

  void gotSudentDetailPage(String id) async {
    var srudent = await _studentFirebase.getStudent(id);
    if (srudent != null) {
      Get.toNamed(Routes.STUDENT_DETAIL, arguments: srudent);
    } else {
      Get.showSnackbar(GetSnackBar(
        message: 'Invalid Id',
        duration: Duration(seconds: 2),
      ));
    }
  }

  void getDriver() async {
    var result = await driverFirbase.getDriver();
    if (result != null) {
      driver.value = result;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  void updateDriverStatus(bool staus) {
    isDriverEnable(staus);
  }

  @override
  void onClose() {}
}
