import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/BottomNavbarController/bottom_navbar_controller.dart';
import 'package:rentx/core/app_routes.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_images.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/other_widgets/reward_item.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/user/home/widgets/drawer.dart';

import '../../../../controllers/user/home/home_controller.dart';
import '../../../component/bottom_nav_bar/common_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
              backgroundColor: AppColors.b500,
              drawer: const HomeDrawer(),
              appBar: AppBar(
                actions: [
                  GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.notifications),
                    child: const Icon(
                      Icons.notifications_active,
                      color: AppColors.organ,
                      size: 34,
                    ),
                  ),
                  16.width,
                ],
              ),
              body: Column(
                children: [
                  Container(
                    color: AppColors.background,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 8.h,
                    ),
                    child: Column(
                      children: [
                        const CommonText(
                          text: AppString.welcome,
                          color: AppColors.p50,
                        ).start,
                        const CommonText(
                          text: "Mr. Mushtaq",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ).start,
                        const CommonText(
                          text: AppString.youHome,
                          color: AppColors.p50,
                        ).start,
                        const CommonText(
                          text: "Central Park Palace",
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ).start,
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          decoration: const BoxDecoration(
                              color: AppColors.s900,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          child: const CommonText(
                            text: "RentX. Rewards Alliance",
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ).start,
                        8.height,
                      ],
                    ),
                  ),
                  12.height,
                  RewardItem(
                    onTap: () {
                      BottomNavbarController.instance.onItemTapped(2);
                      Get.to(() => CommonBottomNavBar());
                    },
                    text: AppString.dueRent,
                    buttonText: AppString.payNow,
                    amount: "৳16,000",
                    date: "06 Days-12 Hours left",
                  ),
                  12.height,
                  RewardItem(
                    onTap: () {
                      BottomNavbarController.instance.onItemTapped(1);
                      Get.to(() => CommonBottomNavBar());
                    },
                    amount: "2000",
                  ),
                  12.height,
                  Expanded(
                    child: Container(
                      width: Get.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(fit: BoxFit.fill,image: AssetImage(AppImages.rentxDayChallenge)),
                        borderRadius: BorderRadius.all(Radius.circular(12))
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                  color: AppColors.white,
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: CommonText(text: 'February" 24', color: AppColors.black,),
                            ),
                            Spacer(),
                            const CommonText(
                              textAlign: TextAlign.left,
                              maxLines: 2,
                                text: AppString.getRentxDayChallenge,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                            const CommonText(
                              textAlign: TextAlign.left,
                                maxLines: 2,
                                text: AppString.everyoneWhoSolves,
                              fontSize: 12,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  50.height
                ],
              ),
              // bottomNavigationBar: const CommonBottomNavBar(
              //   currentIndex: 0,
              // ),
            ));
  }
}
