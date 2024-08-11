import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/bottom_nav_bar/common_bottom_bar.dart';
import 'package:rentx/view/component/other_widgets/reward_header.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/user/reward/widgets/sliders.dart';

import '../../../../controllers/user/reward_controller.dart';
import '../../../../core/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../component/CouponCard/custom_coupon_card.dart';
import '../../../component/other_widgets/coupon_card.dart';
import '../../../component/other_widgets/reward_item.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.b500,
      appBar: AppBar(
        title: const CommonText(
          text: AppString.rentXRewards,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: GetBuilder<RewardController>(
        builder: (controller) => SingleChildScrollView(
          child: Column(
            children: [
              const RewardHeader(
                index: 0,
              ),
              12.height,
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
          ),
        ),
      ),
      bottomNavigationBar: const CommonBottomNavBar(currentIndex: 1),
    );
  }
}
