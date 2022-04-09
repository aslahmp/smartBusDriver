import 'package:get/get.dart';

import '../../../data/firbase/driver/firbase_driver.dart';
import '../../../data/models/driver/driver.model.dart';

class HomeController extends GetxController {
  var isDriverEnable = false.obs;
  final driverFirbase = FirbaseDriver();
  late Rx<Driver> driver =
      Driver(id: '', name: '', phoneNumber: 0, email: '').obs;
  @override
  void onInit() {
    getDriver();
    super.onInit();
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
