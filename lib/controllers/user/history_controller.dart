import 'package:get/get.dart';
import 'package:rentx/utils/app_string.dart';

class HistoryController extends GetxController {
  String selectHistory = AppString.redemption;

  selectItem(item) {
    selectHistory = item;
    update();
  }
}
