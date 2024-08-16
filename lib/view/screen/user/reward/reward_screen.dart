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
import 'package:rentx/view/screen/user/reward/widgets/travel.dart';

import '../../../../controllers/user/reward_controller.dart';
import '../../../../utils/app_colors.dart';

class RewardScreen extends StatelessWidget {
  RewardScreen({super.key});

  final RewardController controller = RewardController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.b500,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
              // Wrap the content with AnimatedSwitcher
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: _buildRewardContent(controller.indexNumber),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const CommonBottomNavBar(currentIndex: 1),
    );
  }

  // Method to build the reward content based on the index
  Widget _buildRewardContent(int index) {
    switch (index) {
      case 0:
        return const RewardsGuide(key: ValueKey('RewardsGuide'));
      case 1:
        return const Dining(key: ValueKey('Dining'));
      case 2:
        return const Shopping(key: ValueKey('Shopping'));
      case 3:
        return const Travel(key: ValueKey('Travel'));
      default:
        return const SizedBox.shrink(); // Return an empty widget if the index is not recognized
    }
  }
}

