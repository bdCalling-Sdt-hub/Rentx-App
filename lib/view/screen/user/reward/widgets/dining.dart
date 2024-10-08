import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/view/screen/common_screen/CouponDetails/coupon_details_screen.dart';
import 'package:rentx/view/screen/user/reward/widgets/reward_points.dart';

import '../../../../../core/app_routes.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/other_widgets/coupon_card.dart';
import '../../../../component/text/common_text.dart';

class Dining extends StatelessWidget {
  const Dining({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RewardPoints(rewardPoints: AppString.rewardPoints, pointNumber: "2000"),
        12.height,
        Container(
          color: AppColors.background,
          child: Column(
            children: [
              12.height,
              Row(
                children: [
                  const CommonText(
                    text: AppString.all,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    bottom: 8,
                    left: 20,
                  ).start,
                  const CommonText(
                    text: AppString.available,
                    left: 20,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    bottom: 8,
                  ).start,
                ],
              ),
              Column(
                children: List.generate(
                  5,
                  (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
                      child: CouponCard(
                        onTap: () {
                          CouponDetailsScreen.isMyCoupons = false;
                          Get.toNamed(AppRoutes.couponRedeemScreen);
                        },
                        couponImage: AppImages.pizzaHut,
                        couponHeight: 110,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
