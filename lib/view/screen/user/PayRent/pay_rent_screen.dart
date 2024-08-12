
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../core/app_routes.dart';
import '../../../../utils/app_colors.dart';

class PayRentScreen extends StatelessWidget {
  const PayRentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.b500,
      appBar: AppBar(
        centerTitle: true,
        title: CommonText(text: "Pay Rent", fontSize: 20, fontWeight: FontWeight.w700,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            12.height,
            customContainer(
              items: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(text: "YOUR HOME", fontSize: 16,),
                  CommonText(text: "Central Park Palace", fontWeight: FontWeight.w700, fontSize: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4,),
                    decoration: BoxDecoration(
                      color: AppColors.s900,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: CommonText(text: "RentX. Rewards Alliance"),
                  )
                ],
              )
            ),
            12.height,
            customContainer(
              items: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(text: AppString.currentRentDue, fontSize: 18),
                CommonText(text: "৳16,000", fontSize: 26, fontWeight: FontWeight.w700,)
              ],
              ),
            ),
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
      ),
    );
  }

  Container customContainer({required Widget items}) {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            width: Get.width,
            decoration: BoxDecoration(
              color: AppColors.background,
            ),
            child: items,
          );
  }
}
