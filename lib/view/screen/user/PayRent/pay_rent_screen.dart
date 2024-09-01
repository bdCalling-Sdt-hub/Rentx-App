import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_icons.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../core/app_routes.dart';
import '../../../../helpers/prefs_helper.dart';
import '../../../../utils/app_colors.dart';
import '../history/widgets/history_item.dart';

class PayRentScreen extends StatelessWidget {
  PayRentScreen({super.key});

  final autoPayRentController = ValueNotifier<bool>(PrefsHelper.isAutoPayRent);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.b500,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: CommonText(
          text: "Pay Rent",
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Column(
        children: [
          12.height,
          customContainer(
              items: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: "YOUR HOME",
                fontSize: 16,
              ),
              CommonText(
                text: "Central Park Palace",
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                    color: AppColors.s900,
                    borderRadius: BorderRadius.circular(12)),
                child: CommonText(text: "RentX. Rewards Alliance"),
              )
            ],
          )),
          12.height,
          customContainer(
            items: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(text: AppString.currentRentDue, fontSize: 18),
                CommonText(
                  text: "৳16,000",
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () => Get.toNamed(AppRoutes.payRentAdditionalScreen),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              decoration: const BoxDecoration(
                color: AppColors.s500,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(
                    text: "Pay Now",
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  8.width,
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
          customContainer(
              items: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CommonImage(imageSrc: AppIcons.autoPayIcon),
                  6.width,
                  CommonText(
                      text: AppString.autoPayForRent,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                  Spacer(),
                  AdvancedSwitch(
                    initialValue: PrefsHelper.isAutoPayRent,
                    onChanged: (value) {},
                    // thumb: ValueListenableBuilder(
                    //   valueListenable: autoPayRentController,
                    //   builder: (_, value, __) {
                    //     return Icon(
                    //       value? Icons.circle : Icons.circle_outlined,
                    //       size: 22,
                    //     );
                    //   },
                    // ),
                    controller: autoPayRentController,
                    activeColor: AppColors.s600,
                    inactiveColor: AppColors.b200,
                    borderRadius: BorderRadius.all(const Radius.circular(15)),
                    width: 40.0,
                    height: 22.0,
                    enabled: true,
                    disabledOpacity: 0.5,
                  ),
                ],
              ),
              8.height,
              CommonText(
                  textAlign: TextAlign.left,
                  maxLines: 3,
                  text: AppString.setUpAutomaticRent)
            ],
          )),
          12.height,
          Expanded(
            child: customContainer(
              items: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CommonText(
                    textAlign: TextAlign.left,
                    fontSize: 18,
                    text: AppString.recentRentHistory,
                    textDecoration: TextDecoration.underline,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) => const HistoryItem(
                        text: "Paid the rent of house “Daisy Garden”.",
                        horizontalPadding: 0,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      // bottomNavigationBar: CommonBottomNavBar(currentIndex: 2),
    );
  }

  Container customContainer({required Widget items}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColors.background,
      ),
      child: items,
    );
  }
}
