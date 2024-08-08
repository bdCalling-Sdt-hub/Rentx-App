import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/view/screen/home/widgets/drawer.dart';

import '../../../controllers/common_controller/home/home_controller.dart';
import '../../component/bottom_nav_bar/common_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
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
              body: Container(),
              bottomNavigationBar: const CommonBottomNavBar(
                currentIndex: 0,
              ),
            ));
  }
}
