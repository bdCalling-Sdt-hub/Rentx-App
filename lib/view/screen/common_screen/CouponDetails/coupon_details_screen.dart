import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:rentx/core/app_routes.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/helpers/prefs_helper.dart';
import 'package:rentx/helpers/screen_shot_helper.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/view/component/button/common_button.dart';
import 'package:rentx/view/component/downloadVoucher/download_voucher_button.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../utils/app_colors.dart';

class CouponDetailsScreen extends StatelessWidget {
  CouponDetailsScreen({super.key});

  static bool isMyCoupons = false;
  ScreenshotController screenshotController = ScreenshotController();

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
        title: CommonText(text: ""),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            Screenshot(
              controller: screenshotController,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                  AppImages.detailsCard,
                ))),
                child: Column(
                  children: [
                    Positioned(
                      top: 20.h,
                      left: 20.w,
                      right: 20.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CommonImage(
                                  imageSrc: AppImages.pizzaHut,
                                  imageType: ImageType.png,
                                  height: 80,
                                  width: 80,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const CommonText(
                                          text: "20%",
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                        8.width,
                                        const CommonText(
                                          text: "OFF",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.black,
                                        )
                                      ],
                                    ),
                                    const CommonText(
                                      text: "KFC",
                                      fontSize: 14,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                    Positioned(
                      bottom: 20.h,
                      left: 20.w,
                      right: 20.w,
                      child: Column(
                        children: [
                          16.height,
                          QrImageView(
                            data: '1234567890',
                            version: QrVersions.auto,
                            size: 150,
                          ),
                          const CommonText(
                            text: "#B25G458",
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black,
                          ),
                          const CommonText(
                            text: "Valid until 03 March 2022",
                            color: AppColors.b300,
                            fontSize: 10,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            20.height,
            PrefsHelper.isMerchant
                ? SizedBox()
                : downloadVoucherButton(
                    onTap: () {
                      ScreenShotHelper.captureAndSaveImage(
                          screenshotController: screenshotController);
                    },
                  ),
            12.height,
            PrefsHelper.isMerchant || isMyCoupons
                ? SizedBox()
                : CommonButton(
                    onTap: () => Get.offAllNamed(AppRoutes.commonBottomBar),
                    titleText: "Go To Home",
                    borderColor: Colors.transparent,
                  ),
          ],
        ),
      ),
    );
  }
}
