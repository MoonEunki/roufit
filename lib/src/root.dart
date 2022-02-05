import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:roufit/src/controller/root_controller.dart';
import 'package:roufit/src/pages/home/home.dart';
import 'package:roufit/src/pages/routine/routine.dart';
import 'package:roufit/src/pages/workout/workout.dart';
import 'package:roufit/src/pages/settings/settings.dart';

class Root extends GetView<RootController> {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(title: Text('Root')),
        body: IndexedStack(
          index: controller.rootPageIndex.value,
          children: const [
            Home(),
            Routine(),
            Workout(),
            Settings(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.rootPageIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue[500],
          onTap: controller.changeRootPageIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.all_inclusive),
              label: 'Routine',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              label: 'Workout',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
