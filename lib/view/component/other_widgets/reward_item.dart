import 'package:flutter/material.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/text/common_text.dart';

class RewardItem extends StatelessWidget {
  const RewardItem(
      {super.key,
      this.text = AppString.rewardPoints,
      this.buttonText = AppString.redeem,
      required this.amount,
      this.date,
      this.horizontal = 20,
      this.vertical = 18,
      this.onTap});

  final String text, buttonText, amount;
  final double horizontal, vertical;

  final String? date;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        decoration: const BoxDecoration(color: AppColors.background),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: text,
                  fontSize: 18,
                ),
                CommonText(
                  text: amount,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 42,
                  width: 140,
                  decoration: BoxDecoration(
                      color: AppColors.s500,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonText(
                        text: buttonText,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                      12.width,
                      const Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                8.height,
                if (date != null)
                  CommonText(
                    text: date.toString(),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
