
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:path/path.dart' as path;
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/view/component/text/common_text.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';


class UploadContainer extends StatelessWidget {
  final String? uploadFile;
  final VoidCallback onTap;
  final String uploadText;
  double height;
  double imgHeight;
  double imgWidth;
  FontWeight fontWeight;
  double fontSize;

  UploadContainer({
    super.key,
    required this.onTap,
    required this.uploadFile,
    required this.uploadText,
    this.height = 100,
    this.imgHeight = 60,
    this.imgWidth = 60,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 14
  });

  // final AddVideoController addVideoController = Get.put(AddVideoController());

  String determineFileType(String filePath) {
    String fileExtension = path.extension(filePath).toLowerCase();
    if (['.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff']
        .contains(fileExtension)) {
      return 'image';
    } else {
      return 'unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: DottedBorder(
        padding: EdgeInsets.zero,
        borderType: BorderType.RRect,
        radius: Radius.circular(6.r),
        color: AppColors.primaryColor,
        child: Container(
          height: height,
          width: Get.width,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.transparent, width: 0.5),
            borderRadius: BorderRadius.circular(6),
          ),
          child: uploadFile != null
              ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              4.height,
              Image.asset(AppImages.uploadImage, height: imgHeight, width: imgWidth,),
              CommonText(top: 4,text: "Image file selected", fontWeight: fontWeight, fontSize: fontSize,)
            ],
          )
              : const Icon(Icons.add,
                  size: 30, color: AppColors.white),
        ),
      ),
    );
  }
}