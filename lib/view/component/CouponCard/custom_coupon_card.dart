import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../../screen/Marchant_screens/Components/dotted_line_painter.dart';
import '../image/common_image.dart';
import '../text/common_text.dart';

class CustomCouponCard extends StatelessWidget {
  CustomCouponCard({
    super.key,
    this.onTap,
    required this.couponImage,
    this.couponHeight,
    this.couponWidth
  });

  VoidCallback? onTap;
  String couponImage;
  double? couponHeight;
  double? couponWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          CommonImage(imageSrc: AppImages.cardImage, width: couponWidth?? Get.width, height: couponHeight ?? 100.h),
          Positioned(
            top: 0,
            left: couponWidth != null? 120 : 150,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5),
              height: 100.h,
              child: CustomPaint(
                painter: DottedLinePainter(
                    orientation: LineOrientation.vertical,
                    color: AppColors.b200,
                    strokeWidth: 2,
                    dashLength: 10,
                    dashSpace: 5
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: couponWidth != null? 35 : 50,
            child: CommonImage(imageSrc: couponImage, imageType: ImageType.png, height: 50, width: 50,),
          ),
          Positioned(
            top: 10,
            left: couponWidth != null? 140 : 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CommonText(text: "20%", fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.black,),
                    4.width,
                    const CommonText(text: "OFF", fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.black,)
                  ],
                ),
                Row(
                  children: [
                    const CommonText(text: "KFC", fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.black,),
                    36.width,
                    const CommonText(text: "3500 Points", fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.black,)
                  ],
                ),
                const CommonText(text: "Valid until 01 October 2024.", color: AppColors.b300, fontSize: 10)
              ],
            ),
          )
        ],
      ),
    );
  }
}