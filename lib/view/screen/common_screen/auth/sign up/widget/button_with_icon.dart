import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../../../utils/app_colors.dart';

class ButtonWithIcon extends StatelessWidget {
  final VoidCallback? onTap;

  final IconData icon;
  final String title;
  final Color color;

  final double width;

  const ButtonWithIcon(
      {this.onTap,
      required this.icon,
      required this.title,
      super.key,
      required this.color,
      this.width = 90});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 42,
        width: width,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            CommonText(
              text: title,
              color: AppColors.black,
            )
          ],
        ),
      ),
    );
  }
}
