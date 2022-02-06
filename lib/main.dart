import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roufit/app/modules/auth/auth_binding.dart';
import 'package:roufit/app/routes/app_pages.dart';

Future main() async {
  //main메서드에서 비동기 동작이 있는 경우, 위젯 바인딩을 미리 처리하기위해
  WidgetsFlutterBinding.ensureInitialized();

  //Firebase 초기화
  await Firebase.initializeApp();

  AuthBinding().dependencies();

  runApp(GetMaterialApp(
    title: 'roufit',
    debugShowCheckedModeBanner: false,
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.pages,
  ));
}
