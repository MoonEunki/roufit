import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roufit/google_sign_in.dart';

class LoggedInWidget extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;

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
              final GoogleSignInController controller = Get.find();
              controller.googleLogout();
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
              radius: 50,
              backgroundImage: NetworkImage(user.photoURL!),
            ),
            Text(user.displayName!),
            Text(user.email!),
            Text(user.uid),
          ],
        ),
      ),
    );
  }
}
