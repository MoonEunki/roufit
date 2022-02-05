import 'package:get/get.dart';

class RootController extends GetxController {
  RxInt rootPageIndex = 0.obs;
  void changeRootPageIndex(int index) {
    print(index);
    rootPageIndex.value = index;
  }
  // rootPageIndex.value = index 대신
  // rootPageIndex(index) 이렇게해도되는듯?
}
