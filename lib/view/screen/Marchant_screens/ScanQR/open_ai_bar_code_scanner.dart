
import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';

import '../../../../core/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../component/text/common_text.dart';

class OpenAiBarCodeScanner extends StatelessWidget {
  const OpenAiBarCodeScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AiBarcodeScanner(
      appBarBuilder: (context, controller) {
        return AppBar(
          backgroundColor: AppColors.background,
          title: CommonText(text: "Scan QR", fontSize: 22, fontWeight: FontWeight.w700,),
          automaticallyImplyLeading: false,
          actions: [
            InkWell(
              onTap: () => Get.toNamed(AppRoutes.qrCodeNumber),
              child: Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                      color: AppColors.s500,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Icon(Icons.edit_note, color: AppColors.black,)),
            ),
            20.width
          ],
        );
      },

      bottomSheetBuilder: (context, controller) {
        return Container(
          height: 300,
          width: Get.width,
          decoration: const BoxDecoration(
              color: AppColors.background
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              20.height,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                width: 320,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.s500
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.qr_code_scanner),
                    8.width,
                    CommonText(text: "Scanning Customer QR code.", fontWeight: FontWeight.w600, color: AppColors.black,)
                  ],
                ),
              ),
              // Spacer(),
              // BottomBarMarch(currentIndex: 2)
            ],
          ),
        );
      },
      onDispose: () {
        debugPrint("Barcode scanner disposed!");
      },
      hideGalleryButton: true,
      controller: MobileScannerController(
        detectionSpeed: DetectionSpeed.noDuplicates,
      ),
      onDetect: (BarcodeCapture capture) {
        /// The row string scanned barcode value
        final String? scannedValue =
            capture.barcodes.first.rawValue;
        debugPrint("Barcode scanned: $scannedValue");

        /// The `Uint8List` image is only available if `returnImage` is set to `true`.
        final Uint8List? image = capture.image;
        debugPrint("Barcode image: $image");

        /// row data of the barcode
        final Object? raw = capture.raw;
        debugPrint("Barcode raw: $raw");

        /// List of scanned barcodes if any
        final List<Barcode> barcodes = capture.barcodes;
        debugPrint("Barcode list: $barcodes");
      },

      validator: (value) {
        if (value.barcodes.isEmpty) {
          return false;
        }
        if (!(value.barcodes.first.rawValue
            ?.contains('flutter.dev') ??
            false)) {
          return false;
        }
        return true;
      },
    );
  }
}
