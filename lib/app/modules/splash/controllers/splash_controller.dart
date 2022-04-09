import 'package:driver/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../../infastructure/managers/index.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    start();
    super.onInit();
  }

  void start() async {
    await UserManager.intUser();
    await Future.delayed(Duration(seconds: 1));
    if (UserManager.isUserLoged) {
      Get.offNamed(Routes.HOME);
    } else {
      Get.offNamed(Routes.LOGIN_MOBILE_NUMBER);
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
