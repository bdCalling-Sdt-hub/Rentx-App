
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VoucherRequestController extends GetxController{

   VoucherRequestController get instance => Get.put(VoucherRequestController());

   TextEditingController shopNameController = TextEditingController();
   TextEditingController shopTypeController = TextEditingController();
   TextEditingController requestedDiscountController = TextEditingController();
   TextEditingController addressController = TextEditingController();
   TextEditingController validityController = TextEditingController();

   List shopTypes = ["Dinning", "Shopping",];

   String selectedShopType = "";

   selectShopType(int index) {
      selectedShopType = shopTypes[index];
      shopTypeController.text = selectedShopType;
      update();
      Get.back();
   }
}