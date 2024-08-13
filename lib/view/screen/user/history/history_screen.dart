import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/user/history_controller.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/bottom_nav_bar/common_bottom_bar.dart';
import 'package:rentx/view/component/text/common_text.dart';

import 'widgets/history_item.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const CommonText(
          text: AppString.history,
          fontSize: 24,
        ),
      ),
      body: GetBuilder<HistoryController>(
        builder: (controller) => Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: AppColors.s200.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => controller.selectItem(AppString.redemption),
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                            color:
                                controller.selectHistory == AppString.redemption
                                    ? AppColors.s500
                                    : AppColors.transparent,
                            borderRadius: BorderRadius.circular(12)),
                        child: const CommonText(text: AppString.redemption)),
                  ),
                  GestureDetector(
                    onTap: () => controller.selectItem(AppString.transaction),
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                            color: controller.selectHistory ==
                                    AppString.transaction
                                ? AppColors.s500
                                : AppColors.transparent,
                            borderRadius: BorderRadius.circular(12)),
                        child: const CommonText(text: AppString.transaction)),
                  ),
                ],
              ),
            ),
            if (controller.selectHistory == AppString.redemption)
              Expanded(
                  child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => HistoryItem(
                  isUse: index == 1 || index == 3 ? true : false,
                ),
              )),
            if (controller.selectHistory == AppString.transaction)
              Expanded(
                  child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) => const HistoryItem(),
              ))
          ],
        ),
      ),
      // bottomNavigationBar: const CommonBottomNavBar(currentIndex: 3),
    );
  }
}
