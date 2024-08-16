
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/view/component/button/common_button.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../core/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../component/image/common_image.dart';

class CouponRedeemScreen extends StatelessWidget {
  CouponRedeemScreen({super.key});


  List couponItems = [
    "Redeem the voucher by using your 2000 reward points.",
    "Redeemable at all KFC restaurants in the Bangladesh.",
    "Not valid with any other discounts and promotions.",
    "No cash value."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CommonText(text: ""),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(text: "Total Reward Points", ),
            CommonText(text: "2,000", fontSize: 24, fontWeight: FontWeight.w700, ),
            Container(
              width: Get.width,
              padding: EdgeInsets.symmetric(vertical: 20.h),
              margin: EdgeInsets.symmetric(vertical: 24.h),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12.r)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CommonImage(
                          imageSrc: AppImages.kfcImage,
                          imageType: ImageType.png,
                          height: 80,
                          width: 80,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                const CommonText(
                                  text: "20%",
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                                8.width,
                                const CommonText(
                                  text: "OFF",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.black,
                                )
                              ],
                            ),
                            const CommonText(
                              text: "KFC",
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                            const CommonText(
                                text: "2500 Points",
                                fontSize: 10,
                                color: Colors.black)
                          ],
                        ),
                      ],
                    ),
                  ),
                  12.height,
                  const CommonText(
                    text: "Get 15% at your next KFC buy. ",
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  12.height,
                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 30),
                    child: Column(
                      children: List.generate(
                        couponItems.length,
                            (index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  // padding: EdgeInsets.only(top: 20),
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: AppColors.black,
                                      borderRadius:
                                      BorderRadius.circular(100)),
                                ),
                                8.width,
                                Expanded(
                                  child: CommonText(
                                    textAlign: TextAlign.left,
                                    maxLines: 5,
                                    text: couponItems[index],
                                    color: AppColors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CommonButton(titleText: "Redeem", onTap: () => Get.toNamed(AppRoutes.couponDetailsScreen), borderColor: Colors.transparent,)
          ],
        ),
      ),
    );
  }
}
