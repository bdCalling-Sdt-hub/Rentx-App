import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/view/component/button/common_button.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../controllers/MerchantControllers/PaymentController/payment_controller.dart';
import '../../../../core/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../component/CouponCard/custom_coupon_card.dart';

class BoostedPackageScreen extends StatelessWidget {
  const BoostedPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText(text: ""),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: GetBuilder<PaymentController>(
          builder: (paymentController) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonText(text: "Boosted Package", fontSize: 24,),
                12.height,
                const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: CommonText(
                    text: "Mid Tier",
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                12.height,
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: RichText(
                    text: TextSpan(
                        text: "৳1000",
                        style: GoogleFonts.poppins(
                            color: AppColors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                        children: [
                          TextSpan(
                              text: " per voucher",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white))
                        ]),
                  ),
                ),
                CommonText(text: "Voucher You’ve Boosted :"),
                20.height,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    paymentController.couponList.length,
                    (index) {
                      return Center(
                        child: CustomCouponCard(
                          couponImage: AppImages.pizzaHut,
                          couponWidth: Get.width * 0.7,
                        ),
                      );
                    },
                  ),
                ),
                20.height,
                CommonText(
                  text: "The deadline remains :",
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                Center(
                  child: CommonText(
                    text: " 06 Days-12 Hours left.",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                20.height,
                CommonButton(
                    onTap: () {
                      Get.offAll(AppRoutes.boostPackageScreen);
                    },
                    borderColor: AppColors.transparent,
                    titleText: "Boost More Voucher")
              ],
            );
          },
        ),
      ),
    );
  }
}
