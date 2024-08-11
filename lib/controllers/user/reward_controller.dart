import 'package:get/get.dart';

class RewardController extends GetxController {
  int indexNumber = 0;

  static RewardController get instance => Get.put(RewardController());

  selectIndex(int index) {
    indexNumber = index;
    update();

    print(index);
  }
}
