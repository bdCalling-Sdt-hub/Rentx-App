
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/core/app_routes.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/component/text_field/common_text_field.dart';

class QrCodeNumber extends StatelessWidget {
  const QrCodeNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CommonText(text: AppString.qrCodeNumber),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(text: AppString.enterQrCodeNumber),
            16.height,
            CommonTextField(
              onTap: () => Get.toNamed(AppRoutes.scanQrScreen),
              suffixIcon: Icon(Icons.arrow_forward),
            )

          ],
        ),
      ),
    );
  }
}
