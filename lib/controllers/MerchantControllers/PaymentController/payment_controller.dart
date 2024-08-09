
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class PaymentController extends GetxController{

  static PaymentController get instance => Get.put(PaymentController());

  List<bool>? isChecked;
  List couponList = [1,2,3];

  TextEditingController nameController = TextEditingController(text: kDebugMode? "Naimul Hassan" : "");
  TextEditingController cardNumberController = TextEditingController(text: kDebugMode? "1234 1234 1234" : "");
  TextEditingController expiryDateController = TextEditingController(text: kDebugMode? "05/08/2024" : "");
  TextEditingController cvcNumberController = TextEditingController(text: kDebugMode? "12345" : "");
  TextEditingController countryNameController = TextEditingController(text: kDebugMode? "Bangladesh" : "");


  void toggleCheckbox({required bool value, required int index}) {
     if(isChecked != null){
       isChecked![index] = value;
       update();
     }
    }

    @override
  void onInit() {
      isChecked = List.generate(couponList.length, (index) => false);
    super.onInit();
  }
}