import 'package:flutter/material.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/view/component/image/common_image.dart';

import '../../../../../utils/app_colors.dart';
import '../../../../component/text/common_text.dart';


Widget drawerItem(
    {required String title, IconData? icon, String? svgIcon, VoidCallback? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 42,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          16.width,
          svgIcon != null
              ? CommonImage(imageSrc: svgIcon, imageColor: AppColors.s500, width: 18, height: 18,)
              : Icon(
            icon,
            color: AppColors.s500,
          ),
          CommonText(
            text: title,
            color: AppColors.p500,
            left: 12,
          )
        ],
      ),
    ),
  );
}
