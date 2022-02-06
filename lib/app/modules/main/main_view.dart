import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:roufit/app/modules/home/home.dart';
import 'package:roufit/app/modules/main/main_controller.dart';
import 'package:roufit/app/modules/routine/routine.dart';
import 'package:roufit/app/modules/settings/settings_view.dart';
import 'package:roufit/app/modules/workout/workout.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(title: Text('Root')),
        body: IndexedStack(
          index: controller.rootPageIndex.value,
          children: [Home(), Routine(), Workout(), SettingsView()],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.rootPageIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue[500],
          // unselectedItemColor: Colors.blue[100],
          // backgroundColor: Colors.white,
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
