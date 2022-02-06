import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:roufit/app/modules/auth/auth_controller.dart';

class LoginController extends GetxController {
  AuthController authController = Get.find<AuthController>();
  @override
  void onInit() async {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void login() async {
    GoogleSignInAccount? googleSignInAccount = await authController.googleSign.signIn();
    if (googleSignInAccount == null) {
      return;
    } else {
      GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
      OAuthCredential oAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      try {
        await authController.firebaseAuth.signInWithCredential(oAuthCredential);
      } catch (e) {
        print('로그인하는중에 에러 발생 ${e}');
      }
    }
  }
}
