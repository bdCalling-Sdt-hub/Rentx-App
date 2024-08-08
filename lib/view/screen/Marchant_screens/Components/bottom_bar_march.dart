import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/app_routes.dart';
import '../../../../utils/app_colors.dart';



class BottomBarMarch extends StatefulWidget {
  final int currentIndex;

  const BottomBarMarch({required this.currentIndex, super.key});

  @override
  State<BottomBarMarch> createState() => _BottomBarMarchState();
}

class _BottomBarMarchState extends State<BottomBarMarch> {
  var bottomNavIndex = 0;
  List<Widget> unselectedIcons = [
    const Icon(Icons.settings_outlined, color: AppColors.black),
    const Icon(Icons.notifications_outlined, color: AppColors.black),
    const Icon(Icons.chat, color: AppColors.black),
    const Icon(Icons.person_2_outlined, color: AppColors.black),
  ];

  List<Widget> selectedIcons = [
    const Icon(Icons.settings_outlined, color: AppColors.primaryColor),
    const Icon(Icons.notifications, color: AppColors.primaryColor),
    const Icon(Icons.chat, color: AppColors.primaryColor),
    const Icon(Icons.person, color: AppColors.primaryColor),
  ];

  @override
  void initState() {
    bottomNavIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        index: widget.currentIndex > 5 ? 2 : widget.currentIndex,
        height: 60,
        onTap: onTap,
        color: AppColors.white,
        buttonBackgroundColor: AppColors.s200,
        backgroundColor: widget.currentIndex == 1
            ? AppColors.s200
            : AppColors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 900),
        items: [
          Icon(Icons.home,
              color: widget.currentIndex == 0
                  ? AppColors.s200
                  : AppColors.black),
          Icon(Icons.history,
              color: widget.currentIndex == 1
                  ? AppColors.s200
                  : AppColors.black),
          Icon(Icons.document_scanner_outlined,
              color: widget.currentIndex == 2
                  ? AppColors.s200
                  : AppColors.black),
          Icon(Icons.person,
              color: widget.currentIndex == 3
                  ? AppColors.s200
                  : AppColors.black),
        ]);
  }

  void onTap(int index) async {
    if (kDebugMode) {
      print(widget.currentIndex);
    }
    if (index == 0) {
      if (!(widget.currentIndex == 0)) {
        Get.toNamed(AppRoutes.homeScreenMarch);
      }
    } else if (index == 1) {
      if (!(widget.currentIndex == 1)) {
        Get.toNamed(AppRoutes.historyScreenMarch);
      }
    } else if (index == 2) {
      if (!(widget.currentIndex == 2)) {
        Get.toNamed(AppRoutes.scanQrScreen);
      }
    } else if (index == 3) {
      if (!(widget.currentIndex == 3)) {
        Get.toNamed(AppRoutes.profileScreenMarch);
      }
    }
  }
}
