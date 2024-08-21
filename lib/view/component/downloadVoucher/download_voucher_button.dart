


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/text/common_text.dart';

InkWell downloadVoucherButton() {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.symmetric(
          horizontal: 30.w, vertical: 12.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.transparent,
          border: Border.all(color: AppColors.s500)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.file_download_outlined,
            color: AppColors.p50,
          ),
          8.width,
          CommonText(text: AppString.downloadVoucher)
        ],
      ),
    ),
  );
}