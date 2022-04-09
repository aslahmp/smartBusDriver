import 'package:get/get.dart';

import '../controllers/login_mobile_number_controller.dart';

class LoginMobileNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginMobileNumberController>(
      () => LoginMobileNumberController(),
    );
  }
}
