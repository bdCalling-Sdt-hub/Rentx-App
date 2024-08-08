import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentx/core/app_routes.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/text/common_text.dart';

class BoostPackageScreen extends StatelessWidget {
  const BoostPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText(text: ""),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.height,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: CommonText(
              fontSize: 24,
                fontWeight: FontWeight.w700,
                textAlign: TextAlign.start,
                maxLines: 3,
                text: AppString.chooseBoostPackage),
          ),
          54.height,
          CarouselSlider(
            options: CarouselOptions(
              height: Get.height * 0.5,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              enlargeCenterPage: true,
              enlargeFactor: 0.1,
              scrollDirection: Axis.horizontal,
            ),
            items: [1, 2, 3].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    width: Get.width * 0.9,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(16.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.s200,
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.h, vertical: 2.w),
                          child: CommonText(
                            text: "Most Popular",
                            color: AppColors.blue,
                          ),
                        ),
                        12.height,
                        CommonText(
                          text: "Mid Tier",
                          color: AppColors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                        12.height,
                        RichText(
                          text: TextSpan(
                              text: "৳1000",
                              style: GoogleFonts.poppins(
                                  color: AppColors.black,
                                  fontSize: 60,
                                  fontWeight: FontWeight.w700),
                              children: [
                                TextSpan(
                                    text: " per voucher",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.black))
                              ]
                          ),
                        ),
                        16.height,
                        CommonText(
                          text: "✔️ Boost voucher to popular.",
                          color: AppColors.black,
                        ),
                        CommonText(
                          text: "✔️ 15 Days duration.",
                          color: AppColors.black,
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () => Get.toNamed(AppRoutes.buyPackageScreen),
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.s500,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CommonText(
                                    text: "Buy Now",
                                    color: AppColors.black,
                                  ),
                                  8.width,
                                  Icon(Icons.arrow_forward)
                                ],
                              ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
