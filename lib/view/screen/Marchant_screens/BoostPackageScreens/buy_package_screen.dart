
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/Marchant_screens/History/History_screen_march.dart';

import '../../../../utils/app_colors.dart';

class BuyPackageScreen extends StatelessWidget {
  const BuyPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText(text: ""),
      ),

      body: Column(
        children: [
          CommonText(text: "Selected Tier :"),
          12.height,
          CommonText(
            text: "Mid Tier",
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          12.height,
          RichText(
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
                ]
            ),
          ),
          CommonText(text: "Select your vouchers :"),

          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {

              },
              ),
              CustomCouponCard(couponImage: AppImages.pizzaHut, couponWidth: 300,)
            ],
          ),

          Row(
            children: [
              CommonText(text: "Total Amount :"),
              CommonText(text: "2000 BDT")
            ],
          ),
          20.height,
          Container(
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
              ))
        ],
      ),
    );
  }
}
