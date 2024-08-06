
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/Marchant_screens/Components/dotted_line_painter.dart';

import '../../../../utils/app_colors.dart';

class CouponDetailsScreen extends StatelessWidget {
  const CouponDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText(text: ""),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Stack(
          children: [
             CommonImage(imageSrc: AppImages.detailsCard, height: Get.height * 0.65, width: Get.width, imageType: ImageType.png,),
            Positioned(
              top: Get.height * 0.44,
              child: Container(
                padding: EdgeInsets.only(left: 24),
                width: Get.width * 0.85,
                child: CustomPaint(
                  painter: DottedLinePainter(
                      orientation: LineOrientation.horizontal,
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
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonImage(imageSrc: AppImages.pizzaHut, imageType: ImageType.png, height: 80, width: 80,),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CommonText(text: "20%", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black,),
                                8.width,
                                CommonText(text: "OFF", fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black,)
                              ],
                            ),
                            CommonText(text: "KFC", fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black,),
                            CommonText(text: "2500 Points", fontSize: 10, color: Colors.black)
                          ],
                        ),
                      ],
                    ),
                  ),
                  CommonText(text: "Get 15% at your next KFC buy. ", color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w700,),

                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
