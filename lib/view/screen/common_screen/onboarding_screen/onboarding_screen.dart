import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:get/get.dart';
import '../../../../core/app_routes.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_string.dart';
import '../../../component/button/common_button.dart';
import '../../../component/image/common_image.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(-0.50, 0.60),
          end: Alignment(0.90, -0.5),
          colors: [
            Color(0xFF1D2766),
            Color(0xFF72216D),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          child: Column(
            children: [
              70.height,
              Center(
                  child: CommonImage(
                imageSrc: AppImages.logo,
                height: 60,
                width: 220,
                imageType: ImageType.png,
              )),
              const CommonText(
                text: AppString.yourRentXJourneyBeginsHere,
                fontSize: 26,
                maxLines: 2,
                top: 38,
                bottom: 20,
              ),
              Center(
                  child: CommonImage(
                imageSrc: AppImages.onboarding,
                height: 280,
                width: 310,
                imageType: ImageType.png,
              )),
              70.height,
              CommonButton(
                titleText: AppString.signIn,
                buttonColor: AppColors.p500,
                onTap: () => Get.toNamed(AppRoutes.signIn),
              ),
              24.height,
              CommonButton(
                titleText: AppString.signUp,
                buttonColor: AppColors.transparent,
                titleColor: AppColors.white,
                onTap: () => Get.toNamed(AppRoutes.selectionRole),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
