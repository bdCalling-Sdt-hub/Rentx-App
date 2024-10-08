import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/other_helper.dart';

class ProfileController extends GetxController {
  List languages = ["English", "Bangla"];
  List gender = const ["Male", "Female", "Other"];

  String selectedLanguage = "English";
  String? image;
  bool isLanguageTapped = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  selectedGender(int index) {
    genderController.text = gender[index].toString();
    update();
    Get.back();
  }

  getProfileImage() async {
    image = await OtherHelper.openGallery();
    update();
  }

  selectLanguage(int index) {
    selectedLanguage = languages[index];
    update();
    Get.back();
  }

  tappedLanguage() {
    isLanguageTapped = !isLanguageTapped;
    update();
  }
}
