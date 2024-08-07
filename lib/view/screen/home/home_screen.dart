import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            // title: SizedBox(
            //   width: 150,
            //   child: CommonTextField(
            //     fillColor: AppColors.transparent,
            //     paddingHorizontal: 8,
            //     fontSize: 24,
            //     hintText: "jkldsfdslfj",
            //     controller: controller.houseController,
            //     suffixIcon: PopUpMenu(
            //         items: controller.houses,
            //         selectedItem: controller.houseController.text,
            //         onTap: controller.selectHouse),
            //   ),
            // ),
            // actions: [
            //   SizedBox(
            //     width: 110,
            //     child: CommonTextField(
            //       fillColor: AppColors.transparent,
            //       paddingHorizontal: 8,
            //       hintText: "jkldsfdslfj",
            //       controller: controller.houseController,
            //       suffixIcon: PopUpMenu(
            //           items: controller.houses,
            //           selectedItem: controller.houseController.text,
            //           onTap: controller.selectHouse),
            //     ),
            //   )
            // ],
          ),
          body: Container(),
          bottomNavigationBar: const CommonBottomNavBar(
            currentIndex: 0,
          ),
        ));
  }
}
