import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/utils/app_icons.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../controllers/BottomNavbarController/bottom_navbar_controller.dart';
import '../../../../utils/app_colors.dart';

class BottomBarMarch extends StatefulWidget {
  final int currentIndex;

  const BottomBarMarch({this.currentIndex = 0, super.key});

  @override
  State<BottomBarMarch> createState() => _BottomBarMarchState();
}

class _BottomBarMarchState extends State<BottomBarMarch> {
  BottomNavbarController bottomNavbarController =
      Get.put(BottomNavbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Obx(
        () {
          return CurvedNavigationBar(
            height: 60,
            index: bottomNavbarController.selectedIndex.value,
            onTap: (index) {
              bottomNavbarController.onItemTapped(index);
            },
            color: AppColors.s200,
            buttonBackgroundColor: AppColors.s200,
            backgroundColor: AppColors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 500),
            items: [
              Padding(
                padding: EdgeInsets.only(
                    top: bottomNavbarController.selectedIndex.value == 0
                        ? 0
                        : 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonImage(
                        imageSrc:
                            bottomNavbarController.selectedIndex.value == 0
                                ? AppIcons.homeSolid
                                : AppIcons.homeOutlined),
                    bottomNavbarController.selectedIndex.value == 0
                        ? SizedBox()
                        : const CommonText(
                            text: "Home",
                            fontSize: 12,
                            color: AppColors.black,
                          )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: bottomNavbarController.selectedIndex.value == 1
                        ? 0
                        : 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonImage(
                        imageSrc:
                            bottomNavbarController.selectedIndex.value == 1
                                ? AppIcons.historySolid
                                : AppIcons.historyOutlined),
                    bottomNavbarController.selectedIndex.value == 1
                        ? SizedBox()
                        : const CommonText(
                            text: "History",
                            fontSize: 12,
                            color: AppColors.black,
                          )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: bottomNavbarController.selectedIndex.value == 2
                        ? 0
                        : 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonImage(imageSrc: AppIcons.scanOutlined),
                    bottomNavbarController.selectedIndex.value == 2
                        ? SizedBox()
                        : const CommonText(
                            text: "Scan QR",
                            fontSize: 12,
                            color: AppColors.black,
                          )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: bottomNavbarController.selectedIndex.value == 3
                        ? 0
                        : 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonImage(
                        imageSrc:
                            bottomNavbarController.selectedIndex.value == 3
                                ? AppIcons.profileSolid
                                : AppIcons.profileOutlined),
                    bottomNavbarController.selectedIndex.value == 3
                        ? SizedBox()
                        : const CommonText(
                            text: "Profile",
                            fontSize: 12,
                            color: AppColors.black,
                          )
                  ],
                ),
              ),
            ],
          );
        },
      ),
      body:  Obx(() {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: bottomNavbarController.merchantAllScreens
              .elementAt(bottomNavbarController.selectedIndex.value),
        );
      }),
    );
  }

// void onTap(int index) async {
//   if (kDebugMode) {
//     print(widget.currentIndex);
//   }
//   if (index == 0) {
//     if (!(widget.currentIndex == 0)) {
//       Get.toNamed(AppRoutes.homeScreenMarch);
//     }
//   } else if (index == 1) {
//     if (!(widget.currentIndex == 1)) {
//       Get.toNamed(AppRoutes.historyScreenMarch);
//     }
//   } else if (index == 2) {
//     if (!(widget.currentIndex == 2)) {
//       QrScannerController.openQrScanner();
//       // Get.toNamed(AppRoutes.scanQrScreen);
//     }
//   } else if (index == 3) {
//     if (!(widget.currentIndex == 3)) {
//       Get.toNamed(AppRoutes.profileScreenMarch);
//     }
//   }
// }
}
