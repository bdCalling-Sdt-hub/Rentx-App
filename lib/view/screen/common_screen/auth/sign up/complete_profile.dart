import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/common_controller/auth/sign_up_controller.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../../utils/app_images.dart';
import '../../../../component/image/common_image.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<SignUpController>(
        builder: (controller) => Column(
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
                    radius: 50.sp,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: controller.image != null
                          ? Image.file(
                              File(controller.image!),
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill,
                            )
                          : CommonImage(
                              imageSrc: AppImages.profile,
                              imageType: ImageType.png,
                              height: 100,
                              width: 100,
                            ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: Get.width * 0.50,
                    child: IconButton(
                        style: ButtonStyle(
                            backgroundColor: WidgetStateColor.resolveWith(
                          (states) => Colors.black,
                        )),
                        onPressed: controller.getProfileImage,
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        )))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
