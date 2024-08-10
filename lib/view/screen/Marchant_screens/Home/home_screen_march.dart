import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_icons.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/button/common_button.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/Marchant_screens/Components/bottom_bar_march.dart';
import 'package:rentx/view/screen/Marchant_screens/History/History_screen_march.dart';
import 'package:rentx/view/screen/Marchant_screens/Home/Widgets/home_drawer_merch.dart';

import '../../../../core/app_routes.dart';
import '../../../../utils/app_images.dart';
import '../../../component/image/common_image.dart';

class HomeScreenMarch extends StatelessWidget {
  const HomeScreenMarch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomBarMarch(currentIndex: 0),
      drawer: HomeDrawerMerch(),
      appBar: AppBar(
        title: CommonText(text: ""),
        actions: [
          GestureDetector(
            onTap: () => Get.toNamed(AppRoutes.notifications),
              child: CommonImage(imageSrc: AppIcons.notifyIcon)),
          12.width,
          InkWell(
            onTap: () {
              Get.toNamed(AppRoutes.boostPackageScreen);
            },
              child: CommonImage(imageSrc: AppIcons.boostPackage)),
          20.width
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 35.r,
                    child: ClipOval(
                      child: CommonImage(
                        imageSrc:
                            "https://media.istockphoto.com/id/1311084168/photo/overjoyed-pretty-asian-woman-look-at-camera-with-sincere-laughter.jpg",
                        imageType: ImageType.network,
                        defaultImage: AppImages.profile,
                      ),
                    ),
                  ),
                ),
                12.width,
                Expanded(
                  child: Column(
                    children: [
                      const CommonText(
                        text: AppString.welcome,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.s500,
                      ).start,
                      const CommonText(
                        text: "Naimul Hassan",
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ).start
                    ],
                  ),
                )
              ],
            ),
            16.height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonContainer(
                    containerColor: AppColors.greenLight,
                    icon: AppIcons.crownWinner,
                    points: "12,897",
                    text: AppString.pointsRedeemed),
                CommonContainer(
                    containerColor: AppColors.purple,
                    icon: AppIcons.couponDiscount,
                    points: "97",
                    text: AppString.coupons,
                  count: 2
                ),
              ],
            ),
            12.height,
            Container(
              height: 170.h,
              width: Get.width,
              decoration: BoxDecoration(color: AppColors.offWhite, borderRadius: BorderRadius.circular(6.r)),
              child: Stack(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 20.0, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        8.height,
                        CommonText(
                          text: "${AppString.youHave} 2",
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                        CommonText(
                          text: "${AppString.couponsToday}!",
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                        8.height,
                        InkWell(
                          onTap: () {

                          },
                          child: Container(
                            height: 40.h,
                            width: 110.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.r),
                                color: AppColors.s500
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                16.width,
                                CommonText(
                                  text: AppString.check,
                                  color: AppColors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                8.width,
                                CommonImage(imageSrc: AppIcons.arrowUp, height: 16, width: 16,)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 50 ,
                      child: CommonImage(imageSrc: AppImages.couponBadge, imageType: ImageType.png, height: 110, width: 85,))
                ],
              ),
            ),
            12.height,
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonText(text: AppString.myCoupons, color: AppColors.p500),
                Icon(Icons.add, color: AppColors.p500)
              ],
            ),
            12.height,
            Column(
              children: List.generate(5, (index) {
                return CustomCouponCard(
                  onTap: () {
                    Get.toNamed(AppRoutes.couponDetailsScreen);
                  },
                    couponImage: AppImages.pizzaHut);
              },),
            ),
          ],
        ),
      ),
    );
  }

  Container CommonContainer(
      {required Color containerColor,
      required String icon,
      required String points,
      required String text,
        int count = 1,
      }) {
    return Container(
      height: 110.h,
      width: Get.width * 0.42,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(6.r)),
      child: Column(
        children: [
          8.height,
          CommonImage(imageSrc: icon, height: 36.h, width: 36.w,),
          CommonText(
            text: points,
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: count == 1? AppColors.black : AppColors.p500,
          ),
          CommonText(
            text: text,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: count == 1? AppColors.b400 : AppColors.p500,
          ),
        ],
      ),
    );
  }
}
