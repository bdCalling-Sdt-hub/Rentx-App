
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CommonText(text: "Support", fontWeight: FontWeight.w700, fontSize: 20,),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            60.height,
            CommonImage(imageSrc: AppImages.rentxTextImage, imageType: ImageType.png, height: 45, width: 220,),
            60.height,
            const CommonText(text: AppString.ifYouFaceAnyKind, maxLines: 3, fontSize: 18, fontWeight: FontWeight.w500),
            16.height,
            CustomRow(icon: Icons.phone_outlined, text: "+01752121212"),
            8.height,
            CustomRow(icon: Icons.mail_outline, text: "merchant@gmail.com")
          ],
        ),
      )
    );
  }

  CustomRow({required IconData icon, required String text}) {
    return Padding(
      padding: EdgeInsets.only(left: Get.width * 0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon, color: AppColors.s500,),
              12.width,
              CommonText(text: text)
            ],
          ),
    );
  }
}
