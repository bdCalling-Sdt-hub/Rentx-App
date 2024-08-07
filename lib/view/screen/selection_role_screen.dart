import 'package:flutter/material.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/view/component/text/common_text.dart';
import '../../../../../extension/my_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/app_routes.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_string.dart';
import '../component/button/common_button.dart';
import '../component/image/common_image.dart';
import 'promotional_screen/fristPage.dart';

class SelectionRole extends StatelessWidget {
  const SelectionRole({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          children: [
            180.height,
            Center(
                child: CommonImage(
              imageSrc: AppImages.logo,
              height: 90,
              width: 320,
              imageType: ImageType.png,
            )),
            const CommonText(
              text: "Welcome! \n Are you a...",
              maxLines: 2,
              fontSize: 26,
              fontWeight: FontWeight.w600,
              top: 100,
            ),
            100.height,
            CommonButton(
              buttonIcon: AppImages.merchantIcon,
              titleText: AppString.merchant,
              titleSize: 24,
              onTap: () => Get.toNamed(AppRoutes.signIn),
            ),
            24.height,
            CommonButton(
              buttonIcon: AppImages.userIcon,
              titleText: AppString.user,
              titleSize: 24,
              buttonColor: AppColors.s500,
              borderColor: AppColors.s500,
              onTap: () => Get.to(const FirstPage()),
            ),
          ],
        ),
      ),
    );
  }
}
