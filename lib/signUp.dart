import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roufit/google_sign_in.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('roufit'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    final GoogleSignInController controller = Get.find();
                    controller.googleLogin();
                  },
                  icon: const Icon(Icons.ac_unit_outlined),
                  label: const Text('구글로그인')),
            ],
          ),
        ),
      ),
    );
  }
}
