import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';
import '../../../utils/app_colors.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String titleText;
  final Color titleColor;
  final Color buttonColor;
  final Color? borderColor;
  final double borderWidth;
  final double titleSize;
  final FontWeight titleWeight;
  final double buttonRadius;
  final double buttonHeight;
  final double buttonWidth;
  final String? buttonIcon;

  final bool isLoading;

  const CommonButton(
      {this.onTap,
      required this.titleText,
      this.titleColor = AppColors.black,
      this.buttonColor = AppColors.s200,
      this.titleSize = 20,
      this.buttonRadius = 10,
      this.titleWeight = FontWeight.w700,
      this.buttonHeight = 60,
      this.borderWidth = 1,
      this.isLoading = false,
      this.buttonWidth = double.infinity,
      this.borderColor = AppColors.primaryColor,
      this.buttonIcon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight.h,
      width: buttonWidth.w,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(buttonColor),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(buttonRadius.r),
                side: BorderSide(
                    color: borderColor ?? AppColors.primaryColor,
                    width: borderWidth.w),
              ),
            ),
            elevation: WidgetStateProperty.all(0)),
        child: isLoading
            ? Platform.isIOS
                ? const CupertinoActivityIndicator()
                : const CircularProgressIndicator()
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (buttonIcon != null) CommonImage(imageSrc: "$buttonIcon", imageColor: AppColors.black,),
                  if (buttonIcon != null) 8.width,
                  CommonText(
                    text: titleText,
                    fontSize: titleSize,
                    fontWeight: titleWeight,
                    textAlign: TextAlign.center,
                    color: titleColor,
                  ),
                ],
              ),
      ),
    );
  }
}
