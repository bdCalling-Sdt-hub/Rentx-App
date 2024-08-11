import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/view/screen/user/reward/widgets/sliders.dart';

import '../../../../../core/app_routes.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/other_widgets/coupon_card.dart';
import '../../../../component/other_widgets/reward_item.dart';
import '../../../../component/text/common_text.dart';

class RewardsGuide extends StatelessWidget {
  const RewardsGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RewardItem(
          amount: "2000",
        ),
        12.height,
        const Sliders(),
        Container(
          color: AppColors.background,
          child: Column(
            children: [
              const CommonText(
                text: AppString.popularVouchers,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                bottom: 12,
              ).start,
              Column(
                children: List.generate(
                  5,
                  (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
                      child: CouponCard(
                        onTap: () {
                          Get.toNamed(AppRoutes.couponDetailsScreen);
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