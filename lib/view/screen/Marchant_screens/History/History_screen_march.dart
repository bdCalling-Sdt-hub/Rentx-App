import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/core/app_routes.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/Marchant_screens/Components/bottom_bar_march.dart';

import '../../../component/CouponCard/custom_coupon_card.dart';

class HistoryScreenMarch extends StatelessWidget {
  HistoryScreenMarch({super.key});

  final String title = Get.parameters['name'] ?? "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomBarMarch(currentIndex: 1),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: CommonText(text: title.isEmpty ? "History" : title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return CustomCouponCard(
              couponHeight: 100,
              couponWidth: Get.width,
              couponImage: AppImages.pizzaHut,
              onTap: () {
                Get.toNamed(AppRoutes.couponDetailsScreen);
              },
            );
          },
        ),
      ),
    );
  }
}
