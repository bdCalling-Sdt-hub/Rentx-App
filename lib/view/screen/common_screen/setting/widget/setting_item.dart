import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../component/text/common_text.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({super.key, required this.title, required this.iconDate});

  final String title;
  final IconData iconDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      margin: EdgeInsets.only(bottom: 15.h),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.s900),
          borderRadius: BorderRadius.circular(8.r)),
      child: Row(
        children: [
          Icon(
            iconDate,
            color: AppColors.s500,
          ),
          CommonText(
            text: title,
            color: AppColors.p50,
            left: 12,
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            color: AppColors.p50,
          ),
        ],
      ),
    );
  }
}
