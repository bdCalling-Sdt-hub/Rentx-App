
import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:rentx/core/app_routes.dart';
import 'package:rentx/extension/my_extension.dart';
import 'dart:developer' as print;

import '../../../utils/app_colors.dart';
import '../../../view/component/text/common_text.dart';
import '../../../view/screen/Marchant_screens/Components/bottom_bar_march.dart';

class QrScannerController extends GetxController{

  String qrText = "";

  static QrScannerController get instance => Get.put(QrScannerController());

  Future<String> qrScanner()async {
    await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", "Cancel", true, ScanMode.QR)
        .then(
          (value) {
        try {
          String result = value.toString();
          if (result.isNotEmpty) {
            print.log('Scanned data:==================>>> \n$result');
            qrText = result;
          }
        } catch (e) {
          print.log("$e");
        }
      },
    );
    return qrText;
  }

  static openQrScanner(){
    Get.offAll(()=> AiBarcodeScanner(
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
          decoration: const BoxDecoration(
              color: AppColors.background
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
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
              Spacer(),
              BottomBarMarch(currentIndex: 2)
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
    ));
  }
}