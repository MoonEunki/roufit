import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roufit/app/modules/login/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(child: Text('구글로그인'), onPressed: () => controller.login()),
            ],
          ),
        ),
      ),
    );
  }
}
