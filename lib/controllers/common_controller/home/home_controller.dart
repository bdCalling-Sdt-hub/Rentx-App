import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String qrResult = "";

  static HomeController get instance => Get.put(HomeController());

  TextEditingController houseController =
      TextEditingController(text: "house-1");
}
