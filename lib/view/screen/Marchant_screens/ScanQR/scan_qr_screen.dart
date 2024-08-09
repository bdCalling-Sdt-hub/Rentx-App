import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/MerchantControllers/QrCodeScan/qr_scanner_controller.dart';
import 'package:rentx/view/component/button/common_button.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/Marchant_screens/Components/bottom_bar_march.dart';

class ScanQrScreen extends StatelessWidget {
  ScanQrScreen({super.key});

  QrScannerController qrScannerController = Get.put(QrScannerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarMarch(currentIndex: 2),
      appBar: AppBar(
        centerTitle: true,
        title: CommonText(text: "Scan QR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonButton(
            onTap: () {
              qrScannerController.qrScanner();
            },
              titleText: "Scan QR Code")
        ],
      ),
    );
  }
}
