import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/user/history_controller.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/text/common_text.dart';

import 'widgets/history_item.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({super.key});

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
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: AppColors.s200.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.selectItem(AppString.redemption);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                        color: controller.selectHistory == AppString.redemption
                            ? AppColors.s500
                            : AppColors.transparent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: CommonText(
                        text: AppString.redemption,
                        color: controller.selectHistory == AppString.redemption
                            ? AppColors.black
                            : AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.selectItem(AppString.transaction);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                        color: controller.selectHistory == AppString.transaction
                            ? AppColors.s500
                            : AppColors.transparent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: CommonText(
                        text: AppString.transaction,
                        color: controller.selectHistory == AppString.transaction
                            ? AppColors.black
                            : AppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Wrap the ListView.builder with AnimatedSwitcher
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: controller.selectHistory == AppString.redemption
                    ? ListView.builder(
                  key: const ValueKey(AppString.redemption),
                  itemCount: 10,
                  itemBuilder: (context, index) => HistoryItem(
                    isUse: index == 1 || index == 3,
                  ),
                )
                    : ListView.builder(
                  key: const ValueKey(AppString.transaction),
                  itemCount: 2,
                  itemBuilder: (context, index) =>
                  const HistoryItem(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


