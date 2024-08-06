import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/Marchant_screens/Components/bottom_bar_march.dart';
import 'package:rentx/view/screen/Marchant_screens/Components/dotted_line_painter.dart';

class HistoryScreenMarch extends StatelessWidget {
  const HistoryScreenMarch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarMarch(currentIndex: 0),
      appBar: AppBar(
        centerTitle: true,
        title: CommonText(text: "History"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
          return CustomCouponCard();
        },),
      ),
    );
  }
}

class CustomCouponCard extends StatelessWidget {
  CustomCouponCard({
    super.key,
    this.onTap,

  });

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Stack(
        children: [
          CommonImage(imageSrc: AppImages.cardImage, width: Get.width, height: 100),
          Positioned(
            top: 0,
            left: 150,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              height: 100,
              child: CustomPaint(
                painter: DottedLinePainter(
                    orientation: LineOrientation.vertical,
                    color: AppColors.b300,
                    strokeWidth: 2,
                    dashLength: 10,
                    dashSpace: 5
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 50,
            child: CommonImage(imageSrc: AppImages.pizzaHut, imageType: ImageType.png, height: 50, width: 50,),
          ),
          Positioned(
            top: 10,
            left: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CommonText(text: "20%", fontSize: 24, fontWeight: FontWeight.w700, color: AppColors.black,),
                    4.width,
                    CommonText(text: "OFF", fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.black,)
                  ],
                ),
                Row(
                  children: [
                    CommonText(text: "KFC", fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.black,),
                    36.width,
                    CommonText(text: "3500 Points", fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.black,)
                  ],
                ),
                CommonText(text: "Valid until 01 October 2024.", color: AppColors.b300, fontSize: 10)
              ],
            ),
          )
        ],
      ),
    );
  }
}
