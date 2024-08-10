import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../../../extension/my_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../controllers/common_controller/profile/profile_controller.dart';
import '../../../../../helpers/other_helper.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/pop_up/common_pop_menu.dart';
import '../../../../component/text/common_text.dart';
import '../../../../component/text_field/common_phone_number_text_filed.dart';
import '../../../../component/text_field/common_text_field.dart';

class EditProfileAllFiled extends StatelessWidget {
  const EditProfileAllFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              text: AppString.email,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 16,
            ).start,
            CommonTextField(
              controller: controller.emailController,
              prefixIcon: const Icon(Icons.mail, color: AppColors.black),
              hintText: AppString.email,
              validator: OtherHelper.emailValidator,
            ),
            CommonText(
              text: AppString.dateOfBirth,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 16,
            ).start,
            CommonTextField(
              prefixIcon: const Icon(
                Icons.calendar_month,
              ),
              hintText: AppString.birthDay,
              controller: controller.dateOfBirthController,
              validator: OtherHelper.validator,
            ),

            const CommonText(
              text: AppString.address,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 16,
            ).start,
            CommonTextField(
              prefixIcon: const Icon(
                Icons.location_on_rounded,
              ),
              hintText: AppString.address,
              controller: controller.addressController,
              validator: OtherHelper.validator,
            ),

          ],
        );
      },
    );
  }
}
