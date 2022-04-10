import 'package:get/get.dart';

import '../modules/LoginMobileNumber/bindings/login_mobile_number_binding.dart';
import '../modules/LoginMobileNumber/views/login_mobile_number_view.dart';
import '../modules/LoginOtp/bindings/login_otp_binding.dart';
import '../modules/LoginOtp/views/login_otp_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/studentDetail/bindings/student_detail_binding.dart';
import '../modules/studentDetail/views/student_detail_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_MOBILE_NUMBER,
      page: () => LoginMobileNumberView(),
      binding: LoginMobileNumberBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_OTP,
      page: () => LoginOtpView(),
      binding: LoginOtpBinding(),
    ),
    GetPage(
      name: _Paths.STUDENT_DETAIL,
      page: () => StudentDetailView(),
      binding: StudentDetailBinding(),
    ),
  ];
}
