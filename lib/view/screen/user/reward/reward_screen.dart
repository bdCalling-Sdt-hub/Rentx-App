import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/bottom_nav_bar/common_bottom_bar.dart';
import 'package:rentx/view/component/other_widgets/reward_header.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/user/reward/widgets/dining.dart';
import 'package:rentx/view/screen/user/reward/widgets/rewards_guide.dart';
import 'package:rentx/view/screen/user/reward/widgets/shopping.dart';
import 'package:rentx/view/screen/user/reward/widgets/sliders.dart';
import 'package:rentx/view/screen/user/reward/widgets/travel.dart';

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
              const RewardHeader(),
              12.height,
              if (controller.indexNumber == 0) const RewardsGuide(),
              if (controller.indexNumber == 1) const Dining(),
              if (controller.indexNumber == 2) const Shopping(),
              if (controller.indexNumber == 3) const Travel(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CommonBottomNavBar(currentIndex: 1),
    );
  }
}
