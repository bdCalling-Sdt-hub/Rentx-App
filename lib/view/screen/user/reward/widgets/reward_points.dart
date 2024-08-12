
import 'package:flutter/material.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../component/text/common_text.dart';

class RewardPoints extends StatelessWidget {
  const RewardPoints({
    super.key,
    required this.rewardPoints,
    required this.pointNumber
  });

  final String rewardPoints;
  final String pointNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            text: rewardPoints,
            fontSize: 18,
            left: 20,
          ),
          CommonText(
            text: pointNumber,
            fontSize: 26,
            left: 20,
            fontWeight: FontWeight.w600,
          ),
        ],
      ),
    );
  }
}