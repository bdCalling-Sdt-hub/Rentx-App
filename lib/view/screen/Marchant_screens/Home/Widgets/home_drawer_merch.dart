
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/common_controller/profile/profile_controller.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_icons.dart';
import 'package:rentx/view/component/text/common_text.dart';
import '../../../../../core/app_routes.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/image/common_image.dart';
import '../../../../component/pop_up/common_pop_menu.dart';
import 'drawer_item.dart';

class HomeDrawerMerch extends StatelessWidget {
  HomeDrawerMerch({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: AppColors.background.withOpacity(0.8),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: GetBuilder<ProfileController>(builder: (controller) {
              return ListView(
                children: [
                  30.height,
                  Row(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 25.sp,
                          child: ClipOval(
                            child: CommonImage(
                              imageSrc: "https://rb.gy/fpz6t0",
                              imageType: ImageType.network,
                              height: 170,
                              width: 170,
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
                              text: "Naimul Hassan",
                              fontWeight: FontWeight.w600,
                            ).start,
                            const CommonText(
                              text: "developernaimul00@gmail.com",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ).start
                          ],
                        ),
                      )
                    ],
                  ),
                  20.height,
                  drawerItem(
                      onTap: () => Get.toNamed(AppRoutes.editProfile),
                      title: AppString.personalInformation,
                      icon: Icons.account_circle_outlined),
                  drawerItem(
                    onTap: () => Get.toNamed(AppRoutes.myCoupons),
                    title: AppString.myCoupons,
                    svgIcon: AppIcons.coupons,),
                  drawerItem(
                      onTap: () => Get.toNamed(AppRoutes.supportScreen),
                      title: AppString.support,
                      icon: Icons.verified_user_outlined),
                  drawerItem(
                      onTap: () => Get.toNamed(AppRoutes.boostedPackageScreen),
                      title: AppString.boostedPackage,
                      svgIcon: AppIcons.boostPackage),
                  drawerItem(
                      onTap: () => Get.toNamed(AppRoutes.setting),
                      title: AppString.settings,
                      icon: Icons.settings_outlined),
                  InkWell(
                    onTap: () {
                      controller.tappedLanguage();
                    },
                    child: Row(
                      children: [
                        drawerItem(
                            title: AppString.languages,
                            icon: Icons.language),

                        controller.isLanguageTapped?
                            PopUpMenu(
                              iconColor: AppColors.white,
                                items: controller.languages,
                                selectedItem: [
                                  controller.selectedLanguage
                                ],
                                onTap: controller.selectLanguage) : const Icon(Icons.arrow_forward_ios, color: AppColors.white, size: 18,),

                      ],
                    ),
                  ),
                  drawerItem(
                      onTap: () => Get.toNamed(AppRoutes.aboutUs),
                      title: AppString.aboutMe,
                      icon: Icons.info_outline),
                  drawerItem(
                      onTap: () => Get.toNamed(AppRoutes.privacyPolicy),
                      title: AppString.privacyPolicy,
                      icon: Icons.privacy_tip_outlined),
                  drawerItem(
                      onTap: () => Get.toNamed(AppRoutes.termsOfServices),
                      title: AppString.termsOfServices,
                      svgIcon: AppIcons.termsOfService),
                  50.height,
                  drawerItem(
                      onTap: logOutPopUp,
                      title: AppString.logOut,
                      svgIcon: AppIcons.logOut),
                ],
              );
            },),
          ),
        ));
  }
}
