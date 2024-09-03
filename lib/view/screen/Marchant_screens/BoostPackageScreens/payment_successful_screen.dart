import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/core/app_routes.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/button/common_button.dart';
import 'package:rentx/view/component/image/common_image.dart';

import '../../../component/text/common_text.dart';

class PaymentSuccessfulScreen extends StatelessWidget {
  const PaymentSuccessfulScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CommonText(text: ""),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: [
            100.height,
            CommonImage(
              imageSrc: AppImages.paymentSuccessful,
              imageType: ImageType.png,
              width: Get.width,
              height: 300,
            ),
            40.height,
            const CommonText(
              text: AppString.paymentSuccessful,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            54.height,
            CommonButton(
                onTap: () => Get.toNamed(AppRoutes.homeScreenMarch),
                titleText: AppString.backToHome)
          ],
        ),
      ),
    );
  }
}
