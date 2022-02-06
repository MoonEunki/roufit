import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:roufit/app/modules/auth/auth_controller.dart';

class SettingsController extends GetxController {
  AuthController authController = Get.find<AuthController>();
  late User user;
  @override
  void onInit() async {
    super.onInit();
    user = Get.arguments;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void logout() async {
    await authController.googleSign.disconnect();
    await authController.firebaseAuth.signOut();
  }
}
