import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rentx/utils/app_string.dart';

class LandlordInfoController extends GetxController {
  List paymentOption = [AppString.bank, AppString.card, AppString.digitalPay];

  String selectedOption = AppString.bank;

  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController houseNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  TextEditingController accountNameController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController bankController = TextEditingController();
  TextEditingController branchNameController = TextEditingController();




  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expirationController = TextEditingController();
  TextEditingController cvcController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  selectPaymentOption(int index) {
    selectedOption = paymentOption[index];
    update();
    print(index) ;
  }
}
