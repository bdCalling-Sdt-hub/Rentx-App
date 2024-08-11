import 'package:flutter/material.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';

class RewardHeader extends StatelessWidget {
  const RewardHeader({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          8.width,
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: index == 0 ? AppColors.s500 : Colors.white,
                  borderRadius: BorderRadius.circular(6)),
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  CommonImage(imageSrc: AppImages.reward),
                  Expanded(
                    child: const CommonText(
                      text: AppString.rewardsGuide,
                      fontSize: 10,
                      left: 4,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ).start,
                  )
                ],
              ),
            ),
          ),
          4.width,
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(6)),
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  CommonImage(imageSrc: AppImages.dining),
                  Expanded(
                    child: const CommonText(
                      text: AppString.dining,
                      fontSize: 10,
                      left: 4,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ).start,
                  )
                ],
              ),
            ),
          ),
          4.width,
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(6)),
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  CommonImage(imageSrc: AppImages.shopping),
                  Expanded(
                    child: const CommonText(
                      text: AppString.shopping,
                      fontSize: 10,
                      left: 4,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ).start,
                  )
                ],
              ),
            ),
          ),
          4.width,
          Expanded(
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(6)),
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  CommonImage(imageSrc: AppImages.travel),
                  Expanded(
                    child: const CommonText(
                      text: AppString.travel,
                      fontSize: 10,
                      left: 4,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ).start,
                  )
                ],
              ),
            ),
          ),
          8.width,
        ],
      ),
    );
  }
}
