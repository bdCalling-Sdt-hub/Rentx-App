import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';

class Travel extends StatelessWidget {
  const Travel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CommonText(
            text: AppString.travel,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
          CommonImage(
            imageSrc: AppImages.travelImage,
            imageType: ImageType.png,
            height: 100,
            width: 100,
          ),
          const CommonText(
            text: AppString.comingSoon,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColors.s700,
            top: 20,
          ),
        ],
      ),
    );
  }
}
