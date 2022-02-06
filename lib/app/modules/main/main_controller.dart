import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt rootPageIndex = 0.obs;
  void changeRootPageIndex(int index) {
    print(index);
    rootPageIndex.value = index;
    // rootPageIndex(index) 이렇게해도되는듯?
  }
}
