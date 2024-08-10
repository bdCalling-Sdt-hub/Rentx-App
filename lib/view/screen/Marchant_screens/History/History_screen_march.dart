import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/core/app_routes.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/Marchant_screens/Components/bottom_bar_march.dart';

import '../../../component/CouponCard/custom_coupon_card.dart';


class HistoryScreenMarch extends StatelessWidget {
  const HistoryScreenMarch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarMarch(currentIndex: 1),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const CommonText(text: "History"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
          return CustomCouponCard(
            couponImage: AppImages.pizzaHut,
            onTap: () {
              Get.toNamed(AppRoutes.couponDetailsScreen);
            },
          );
        },),
      ),
    );
  }
}


