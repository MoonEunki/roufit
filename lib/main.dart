import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roufit/src/controller/root_controller.dart';
import 'package:roufit/src/root.dart';
// GetMaterialApp(home: MyApp())

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

// class TabController extends GetxController {
//   var currentTabIndex = 0.obs;
//   changeTab(int index) => {currentTabIndex.value = index};

//   var pageList = const [
//     HomePage(),
//     RoutinePage(),
//     WorkoutPage(),
//     SettingsPage(),
//   ];
// }

// class LandingPage extends StatelessWidget {
//   const LandingPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final TabController c = Get.put(TabController());
//     return Scaffold(
//       appBar: AppBar(title: Text("Test")),
//       body: SafeArea(
//         child: Obx(() => c.pageList[c.currentTabIndex.value]),
//       ),

//       ),
//     );
//   }
// }

// class landingPageController extends GetxController {
// static landingPageController get to => Get.find();

// final currentIndex = 3.obs;

// List<Widget> pages = [
//   HomePage(),
//   RoutinePage(),
//   WorkoutPage(),
//   SettingsPage(),
// ];

// Widget get currentPage => pages[currentIndex.value];

// void changePage(int index) {
//   currentIndex.value = index;
// }

// void changeTabIndex(int index) {
//   tabIndex.value = index;
// }

// @override
// void onInit() {
//   super.onInit();
// }

// @override
// void dispose() {
//   super.dispose();
// }
// }

// class LandingPage extends StatelessWidget {
//   LandingPage({Key? key}) : super(key: key);

//   final TextStyle unselectedLabelStyle = TextStyle(color: Colors.white.withOpacity(0.5), fontWeight: FontWeight.w500, fontSize: 12);
//   final TextStyle selectedLabelStyle = const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => Scaffold(
//           body: landingPageController().currentPage,
//           bottomNavigationBar: BottomNavigationBar(
//             showUnselectedLabels: true,
//             showSelectedLabels: true,
//             // backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
//             // unselectedItemColor: Colors.white.withOpacity(0.5),
//             // selectedItemColor: Colors.white,
//             // unselectedLabelStyle: unselectedLabelStyle,
//             // selectedLabelStyle: selectedLabelStyle,
//             currentIndex: landingPageController().currentIndex.value,
//             onTap: (index) => landingPageController().changePage(index),
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.fitness_center),
//                 label: 'Routine',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.fitness_center),
//                 label: 'Workout',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.settings),
//                 label: 'Settings',
//               ),
//             ],
//           ),
//         ));
//   }
// }
//
// 마이앱 >  바텀네비게이션바 4개 , 페이지4개

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(Controller());
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Getx example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GetBuilder<Controller>(
//               init: Controller(),
//               builder: (_) => Text(
//                 'clicks: ${_.count1}',
//               ),
//             ),
//             TextButton(onPressed: controller.increment1, child: Text('increment1')),
//             GetX<Controller>(
//               builder: (_) => Text(
//                 'clicks: ${_.number.value}',
//               ),
//             ),
//             Obx(() {
//               return Text(
//                 'clicks: ${controller.number.value}',
//               );
//             }),
//             TextButton(onPressed: controller.increment2, child: Text('increment2')),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Controller extends GetxController {
//   var count1 = 0;
//   var number = 0.obs;
//   // var number = Rx<int>(0);
//   // var number = RxInt(0);

//   void increment1() {
//     count1++;
//     update();
//   }

//   void increment2() => number.value++;

//   @override
//   void onInit() {
//     super.onInit();

//     once(number, (_) {
//       print('$_이 처음으로 변경되었습니다.');
//     });
//     ever(number, (_) {
//       print('$_이 변경되었습니다.');
//     });
//     debounce(
//       number,
//       (_) {
//         print('$_가 마지막으로 변경된 이후, 1초간 변경이 없습니다.');
//       },
//       time: Duration(seconds: 1),
//     );
//     interval(
//       number,
//       (_) {
//         print('$_가 변경되는 중입니다.(1초마다 호출)');
//       },
//       time: Duration(seconds: 1),
//     );
//   }
// }

// class LandingPage2 extends StatelessWidget {

//   buildBottomNavigationMenu(context, landingPageController) {
//     return Obx(() => MediaQuery(
//         data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
//         child: SizedBox(
//           height: 54,
//           child: BottomNavigationBar(

//             items: [
//               BottomNavigationBarItem(
//                 icon: Container(
//                   margin: EdgeInsets.only(bottom: 7),
//                   child: Icon(
//                     Icons.home,
//                     size: 20.0,
//                   ),
//                 ),
//                 label: 'Home',
//                 backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
//               ),
//               BottomNavigationBarItem(
//                 icon: Container(
//                   margin: EdgeInsets.only(bottom: 7),
//                   child: Icon(
//                     Icons.search,
//                     size: 20.0,
//                   ),
//                 ),
//                 label: 'Explore',
//                 backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
//               ),
//               BottomNavigationBarItem(
//                 icon: Container(
//                   margin: EdgeInsets.only(bottom: 7),
//                   child: Icon(
//                     Icons.location_history,
//                     size: 20.0,
//                   ),
//                 ),
//                 label: 'Places',
//                 backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
//               ),
//               BottomNavigationBarItem(
//                 icon: Container(
//                   margin: EdgeInsets.only(bottom: 7),
//                   child: Icon(
//                     Icons.settings,
//                     size: 20.0,
//                   ),
//                 ),
//                 label: 'Settings',
//                 backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
//               ),
//             ],
//           ),
//         )));
//   }

//   @override
//   Widget build(BuildContext context) {
//     final landingPageController landingPageController = Get.put(landingPageController(), permanent: false);
//     return SafeArea(
//         child: Scaffold(
//       bottomNavigationBar: buildBottomNavigationMenu(context, landingPageController),
//       body: Obx(() => IndexedStack(
//             index: landingPageController.tabIndex.value,
//             children: [
//               HomePage(),
//               RoutinePage(),
//               WorkoutPage(),
//               SettingsPage(),
//             ],
//           )),
//     ));
//   }
// }

