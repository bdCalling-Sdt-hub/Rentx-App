import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:rentx/controllers/MerchantControllers/QrCodeScan/qr_scanner_controller.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/Marchant_screens/Components/bottom_bar_march.dart';

import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';

class ScanQrScreen extends StatelessWidget {
  ScanQrScreen({super.key});

  QrScannerController qrScannerController = Get.put(QrScannerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomBarMarch(currentIndex: 2),
      appBar: AppBar(
        centerTitle: true,
        title: CommonText(text: "Scan QR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          60.height,
          Center(
            child: Container(
              height: 180.h,
              width: 180.w,
              decoration: BoxDecoration(
                  color: AppColors.white
              ),
              child: Center(
                child: QrImageView(
                  data: "#B25G458",
                  version: QrVersions.auto,
                  gapless: false,
                  // embeddedImage: FileImage(File(selectedContact.imageUrl)),
                  embeddedImageStyle: QrEmbeddedImageStyle(
                      size: Size(100, 100)
                  ),
                  errorStateBuilder: (context, error) {
                    return Center(
                      child: Text(
                        "Oh! Something went wrong...".tr,
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          16.height,
          CommonText(text: "#B25G458"),
          16.height,
          CommonImage(imageSrc: AppImages.kfcImage, imageType: ImageType.png, height: 100, width: 100,),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CommonText(text: "20%", fontSize: 24, fontWeight: FontWeight.w700),
              4.width,
              const CommonText(text: "OFF", fontSize: 20, fontWeight: FontWeight.w500)
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CommonText(text: "KFC", fontSize: 20, fontWeight: FontWeight.w600),
              36.width,
              const CommonText(text: "3500 Points", fontSize: 10, fontWeight: FontWeight.w400)
            ],
          ),

        ],
      ),
    );
  }
}
