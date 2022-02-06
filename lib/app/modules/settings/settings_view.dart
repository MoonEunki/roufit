import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roufit/app/modules/settings/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    Get.put(SettingsController());
    return Scaffold(
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
            TextButton(
              child: const Text('로그아웃', style: TextStyle(color: Colors.red)),
              onPressed: () async {
                controller.logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
