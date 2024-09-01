import 'package:flutter/material.dart';
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
  const HomeDrawerMerch({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: AppColors.background.withOpacity(0.8),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: GetBuilder<ProfileController>(
              builder: (controller) {
                return ListView(
                  children: [
                    30.height,
                    Row(
                      children: [
                        Center(
                          child: CommonImage(
                            borderRadius: 100,
                            imageSrc: "assets/images/profilePhoto.png",
                            imageType: ImageType.png,
                            height: 60,
                            width: 60,
                            defaultImage: AppImages.profile,
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
                      svgIcon: AppIcons.coupons,
                    ),
                    drawerItem(
                        onTap: () =>
                            Get.toNamed(AppRoutes.voucherRequestScreen),
                        title: AppString.requestForVoucher,
                        svgIcon: AppIcons.voucherRequestIcon),
                    drawerItem(
                        onTap: () => Get.toNamed(AppRoutes.supportScreen),
                        title: AppString.support,
                        icon: Icons.verified_user_outlined),
                    drawerItem(
                        onTap: () => Get.toNamed(AppRoutes.historyScreenMarch,
                            parameters: {"name": AppString.boostedPackage}),
                        title: AppString.boostedPackage,
                        svgIcon: AppIcons.boostPackage),
                    drawerItem(
                        onTap: () => Get.toNamed(AppRoutes.setting),
                        title: AppString.settings,
                        icon: Icons.settings_outlined),
                    Row(
                      children: [
                        drawerItem(
                            title: AppString.languages, icon: Icons.language),
                        PopUpMenu(
                            items: controller.languages,
                            iconColor: AppColors.s500,
                            selectedItem: [controller.selectedLanguage],
                            onTap: controller.selectLanguage)
                      ],
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
              },
            ),
          ),
        ));
  }
}
