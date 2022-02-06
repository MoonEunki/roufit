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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Text('Roufit', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('3초만에 roufit 로그인!'),
                  ElevatedButton(child: Text('구글로그인하기'), onPressed: () => controller.login()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
