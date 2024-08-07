import 'package:flutter/material.dart';
import 'package:rentx/extension/my_extension.dart';

import '../../../../utils/app_colors.dart';
import '../../../component/text/common_text.dart';

Widget drawerItem(
    {required String title, required IconData icon, VoidCallback? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 42,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          16.width,
          Icon(
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
