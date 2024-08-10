import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/common_controller/auth/sign_up_controller.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/helpers/prefs_helper.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../../helpers/other_helper.dart';
import '../../../../../utils/app_images.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/text_field/common_text_field.dart';

class CompleteProfile extends StatelessWidget {
  CompleteProfile({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<SignUpController>(
        builder: (controller) => SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const CommonText(
                  text: AppString.completeYour,
                  fontSize: 26,
                  top: 50,
                  fontWeight: FontWeight.w600,
                ).center,
                const CommonText(
                  text: AppString.profile,
                  fontSize: 26,
                  color: AppColors.s500,
                  top: 8,
                ).center,
                const CommonText(
                  text: AppString.fillInYourInformation,
                  fontSize: 16,
                  top: 8,
                ).center,
                20.height,
                Stack(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 90.sp,
                        backgroundColor: AppColors.transparent,
                        child: ClipOval(
                          child: controller.image != null
                              ? Image.file(
                                  File(controller.image!),
                                  width: 130,
                                  height: 130,
                                  fit: BoxFit.fill,
                                )
                              : CommonImage(
                                  imageSrc: AppImages.profile,
                                  imageType: ImageType.png,
                                  height: 180,
                                  width: 180,
                                ),
                        ),
                      ),
                    ),
                    Positioned(

                        bottom: 15,
                        left: Get.width * 0.55,
                        child: IconButton(
                            style: ButtonStyle(
                                backgroundColor: WidgetStateColor.resolveWith(
                              (states) => AppColors.s500,
                            )),
                            onPressed: controller.getProfileImage,
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.black,
                            )))
                  ],
                ),

                20.height,

                if(PrefsHelper.isMerchant)
                  const CommonText(
                  text: AppString.dateOfBirth,
                  fontWeight: FontWeight.w600,
                  bottom: 8,
                ).start,

                if(PrefsHelper.isMerchant)
                  CommonTextField(
                  prefixIcon: const Icon(
                    Icons.calendar_month,
                  ),
                  hintText: AppString.birthDay,
                  controller: controller.dobController,
                  validator: OtherHelper.validator,
                ),

                if(PrefsHelper.isMerchant) 12.height,
                const CommonText(
                  text: AppString.address,
                  fontWeight: FontWeight.w600,
                  bottom: 8,
                ).start,
                CommonTextField(
                  prefixIcon: const Icon(
                    Icons.person_2,
                  ),
                  hintText: AppString.address,
                  controller: controller.addressController,
                  validator: OtherHelper.validator,
                ),
                150.height,
                CommonButton(
                  titleText: AppString.completeProfile,
                  isLoading: controller.isLoading,
                  buttonColor: AppColors.s500,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      controller.signUpUser();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
