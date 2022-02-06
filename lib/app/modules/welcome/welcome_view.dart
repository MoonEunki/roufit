import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roufit/app/modules/welcome/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logged In'),
        centerTitle: true,
        actions: [
          TextButton(
            child: const Text('로그아웃', style: TextStyle(color: Colors.white)),
            onPressed: () async {
              controller.logout();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Profile', style: TextStyle(fontSize: 24)),
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(controller.user.photoURL!),
            ),
            Text('Display Name : ${controller.user.displayName}'),
            Text(controller.user.email!),
            Text(controller.user.uid),
          ],
        ),
      ),
    );
  }
}
