import 'package:get/get.dart';
import 'package:roufit/app/modules/auth/auth_binding.dart';
import 'package:roufit/app/modules/auth/auth_view.dart';
import 'package:roufit/app/modules/login/login_binding.dart';
import 'package:roufit/app/modules/login/login_view.dart';
import 'package:roufit/app/modules/main/main_binding.dart';
import 'package:roufit/app/modules/main/main_view.dart';
import 'package:roufit/app/routes/app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Auth;

  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.Auth,
      page: () => AuthView(),
      binding: AuthBinding(),
      // transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      // transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
      // transition: Transition.rightToLeft,
    ),
  ];
}
