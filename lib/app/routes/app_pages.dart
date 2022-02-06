import 'package:get/get.dart';
import 'package:roufit/app/modules/home/home_binding.dart';
import 'package:roufit/app/modules/home/home_view.dart';
import 'package:roufit/app/modules/login/login_binding.dart';
import 'package:roufit/app/modules/login/login_view.dart';
import 'package:roufit/app/modules/welcome/welcome_binding.dart';
import 'package:roufit/app/modules/welcome/welcome_view.dart';
import 'package:roufit/app/routes/app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.HOME;

  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      // transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      // transition: Transition.rightToLeft,
    ),
    GetPage(
      name: AppRoutes.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
      // transition: Transition.rightToLeft,
    ),
  ];
}
