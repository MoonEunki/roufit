import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:roufit/app/modules/home/home_controller.dart';

class LoginController extends GetxController {
  HomeController homeController = Get.find<HomeController>();
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
    GoogleSignInAccount? googleSignInAccount = await homeController.googleSign.signIn();
    if (googleSignInAccount == null) {
      return;
    } else {
      GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
      OAuthCredential oAuthCredential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      try {
        await homeController.firebaseAuth.signInWithCredential(oAuthCredential);
      } catch (e) {
        print('로그인하는중에 에러 발생 ${e}');
      }
    }
  }
}
