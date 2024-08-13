import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../core/app_routes.dart';
import '../../../../utils/app_images.dart';
import '../../../component/CouponCard/custom_coupon_card.dart';

class MyCoupons extends StatelessWidget {
  const MyCoupons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CommonText(
          text: "My Coupons",
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return CustomCouponCard(
                couponWidth: Get.width,
                onTap: () {
                  Get.toNamed(AppRoutes.couponDetailsScreen);
                },
                couponImage: AppImages.pizzaHut);
          },
        ),
      ),
    );
  }
}
