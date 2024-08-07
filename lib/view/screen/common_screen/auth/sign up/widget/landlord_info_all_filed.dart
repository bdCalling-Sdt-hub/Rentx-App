import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/view/component/text_field/common_phone_number_text_filed.dart';
import '../../../../../../controllers/common_controller/auth/landlord_Info_controller.dart';
import '../../../../../../helpers/other_helper.dart';
import '../../../../../../utils/app_colors.dart';
import '../../../../../../utils/app_string.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../component/text_field/common_text_field.dart';

class LandlordInfoAllFiled extends StatelessWidget {
  const LandlordInfoAllFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandlordInfoController>(
      builder: (controller) {
        return Column(
          children: [
            const CommonText(
              text: AppString.fullName,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ).start,
            CommonTextField(
              prefixIcon: const Icon(
                Icons.person_2,
              ),
              hintText: AppString.fullName,
              controller: controller.nameController,
              validator: OtherHelper.validator,
            ),
            const CommonText(
              text: AppString.phoneNumber,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 16,
            ).start,
            CommonPhoneNumberTextFiled(
              controller: controller.numberController,
              countryChange: (value) => print(value),
            ),
            const CommonText(
              text: AppString.email,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ).start,
            CommonTextField(
              controller: controller.emailController,
              prefixIcon: const Icon(Icons.mail, color: AppColors.black),
              hintText: AppString.email,
              validator: OtherHelper.emailValidator,
            ),
            const CommonText(
              text: AppString.houseName,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 16,
            ).start,
            CommonTextField(
              controller: controller.houseNameController,
              prefixIcon: const Icon(Icons.lock, color: AppColors.black),
              hintText: AppString.houseName,
              validator: OtherHelper.validator,
            ),
            const CommonText(
              text: AppString.address,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 16,
            ).start,
            CommonTextField(
              controller: controller.addressController,
              prefixIcon: const Icon(Icons.lock, color: AppColors.black),
              hintText: AppString.address,
              validator: OtherHelper.validator,
            ),
          ],
        );
      },
    );
  }
}
