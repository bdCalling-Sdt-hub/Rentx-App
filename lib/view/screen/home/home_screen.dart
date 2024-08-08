import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/home/widgets/drawer.dart';

import '../../../controllers/common_controller/home/home_controller.dart';
import '../../component/bottom_nav_bar/common_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
              backgroundColor: AppColors.b500,
              drawer: const HomeDrawer(),
              appBar: AppBar(
                actions: const [
                  Icon(
                    Icons.notifications_active,
                    color: AppColors.organ,
                    size: 34,
                  )
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
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
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2),
                      decoration: const BoxDecoration(
                          color: AppColors.s900,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: const CommonText(
                        text: "RentX. Rewards Alliance",
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ).start,
                  ],
                ),
              ),
              bottomNavigationBar: const CommonBottomNavBar(

                currentIndex: 0,
              ),
            ));
  }
}
