
import 'package:flutter/foundation.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'dart:developer' as print;

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
}