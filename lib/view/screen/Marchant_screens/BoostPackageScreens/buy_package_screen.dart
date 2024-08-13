
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentx/controllers/MerchantControllers/PaymentController/payment_controller.dart';
import 'package:rentx/core/app_routes.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../utils/app_colors.dart';
import '../../../component/CouponCard/custom_coupon_card.dart';

class BuyPackageScreen extends StatelessWidget {
  const BuyPackageScreen({super.key});

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
              CommonText(text: "Selected Tier :"),
              12.height,
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: CommonText(
                  text: "Mid Tier",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              12.height,
              Padding(
                padding: EdgeInsets.only(left: 40),
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
                                color: AppColors.white)
                        )
                      ]
                  ),
                ),
              ),
              CommonText(text: "Select your vouchers :"),

              20.height,
              Column(
                children: List.generate(
                  paymentController.couponList.length, (index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: AppColors.s500,
                          checkColor: AppColors.s500,
                          fillColor: WidgetStatePropertyAll(AppColors.s900),
                          value: true,
                          onChanged: (value) {
                            if(paymentController.isChecked != null){
                              paymentController.isChecked![index] = value!;
                            }
                          },
                        ),
                        12.width,
                        CustomCouponCard(

                          couponImage: AppImages.pizzaHut, couponWidth: Get.width * 0.7,)
                      ],
                    ),
                  );
                },),
              ),
              20.height,

              Row(
                children: [
                  CommonText(text: "Total Amount :", fontSize: 24, fontWeight: FontWeight.w500,),
                  CommonText(text: " 2000 BDT", fontSize: 30, fontWeight: FontWeight.w700,)
                ],
              ),
              20.height,
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoutes.paymentScreen);
                },
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
                          text: "Pay Now",
                          color: AppColors.black,
                        ),
                        8.width,
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                ),
              )
            ],
          );
        },),
      ),
    );
  }
}
