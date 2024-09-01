
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/BottomNavbarController/bottom_navbar_controller.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/view/component/image/common_image.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_icons.dart';
import '../text/common_text.dart';

class CommonBottomNavBar extends StatelessWidget {


  CommonBottomNavBar({super.key});

  final BottomNavbarController bottomNavbarController = BottomNavbarController.instance;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Obx(() {
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
                padding: EdgeInsets.only(top: bottomNavbarController.selectedIndex.value == 0 ? 0 : 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonImage(imageSrc: bottomNavbarController.selectedIndex.value == 0 ? AppIcons.homeSolid : AppIcons.homeOutlined),
                    bottomNavbarController.selectedIndex.value == 0 ? SizedBox() : CommonText(text: "Home", fontSize: 12, color: AppColors.black,)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: bottomNavbarController.selectedIndex.value == 1 ? 0 : 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonImage(imageSrc:  bottomNavbarController.selectedIndex.value == 1  ? AppIcons.rewardSolid : AppImages.reward),
                    bottomNavbarController.selectedIndex.value == 1 ? SizedBox() :CommonText(text: "Reward", fontSize: 12, color: AppColors.black,)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: bottomNavbarController.selectedIndex.value == 2 ? 0 : 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonImage(imageSrc: bottomNavbarController.selectedIndex.value == 2 ? AppIcons.payRentSolid : AppImages.payRent) ,
                    bottomNavbarController.selectedIndex.value == 2 ? SizedBox() : CommonText(text: "Pay rent", fontSize: 12, color: AppColors.black,)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: bottomNavbarController.selectedIndex.value == 3 ? 0 : 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonImage(imageSrc:  bottomNavbarController.selectedIndex.value == 3 ? AppIcons.historySolid : AppIcons.historyOutlined),
                    bottomNavbarController.selectedIndex.value == 3 ? SizedBox() : CommonText(text: "History", fontSize: 12, color: AppColors.black,)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: bottomNavbarController.selectedIndex.value == 4 ? 0 : 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonImage(imageSrc:  bottomNavbarController.selectedIndex.value == 4 ? AppIcons.profileSolid : AppIcons.profileOutlined),
                    bottomNavbarController.selectedIndex.value == 4 ? SizedBox() : CommonText(text: "Profile", fontSize: 12, color: AppColors.black,)
                  ],
                ),
              ),
            ],
           );
      },),
      body: Obx(() {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          child: bottomNavbarController.userAllScreens
              .elementAt(bottomNavbarController.selectedIndex.value),
        );
      }),
    );
  }
}
