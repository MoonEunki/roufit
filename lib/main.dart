import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roufit/src/controller/root_controller.dart';
import 'package:roufit/src/root.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'roufit',
      initialBinding: BindingsBuilder(() {
        Get.put(RootController());
      }),
      home: const Root(),
    );
  }
}
