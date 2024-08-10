import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/view/component/image/common_image.dart';
import '../../../core/app_routes.dart';
import '../../../utils/app_colors.dart';

class CommonBottomNavBar extends StatefulWidget {
  final int currentIndex;

  const CommonBottomNavBar({required this.currentIndex, super.key});

  @override
  State<CommonBottomNavBar> createState() => _CommonBottomNavBarState();
}

class _CommonBottomNavBarState extends State<CommonBottomNavBar> {
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
        color: AppColors.s200,
        buttonBackgroundColor: AppColors.s200,
        backgroundColor: AppColors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 900),
        items: [
          const Icon(Icons.home_outlined, color: AppColors.black),
          CommonImage(imageSrc: AppImages.reward),
          CommonImage(imageSrc: AppImages.payRent),
          const Icon(Icons.access_time_outlined, color: AppColors.black),
          const Icon(Icons.person_2_outlined, color: AppColors.black),

        ]);
  }

  void onTap(int index) async {
    if (kDebugMode) {
      print(widget.currentIndex);
    }
    if (index == 0) {
      if (!(widget.currentIndex == 0)) {
        Get.toNamed(AppRoutes.home);
      }
    } else if (index == 1) {
      if (!(widget.currentIndex == 1)) {
        Get.toNamed(AppRoutes.notifications);
      }
    } else if (index == 2) {
      if (!(widget.currentIndex == 2)) {
        Get.toNamed(AppRoutes.chat);
      }
    } else if (index == 3) {
      if (!(widget.currentIndex == 3)) {
        Get.toNamed(AppRoutes.profile);
      }
    } else if (index == 4) {
      if (!(widget.currentIndex == 4)) {
        Get.toNamed(AppRoutes.profile);
      }
    }
  }
}
