import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/view/component/text/common_text.dart';
import '../../../../core/app_routes.dart';
import '../../../../helpers/prefs_helper.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_string.dart';
import '../../../component/image/common_image.dart';
import 'drawer_item.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: AppColors.background,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ListView(
              children: [
                30.height,
                Row(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 25.sp,
                        child: ClipOval(
                          child: CommonImage(
                            imageSrc: AppImages.profile,
                            imageType: ImageType.png,
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
                    onTap: () => Get.toNamed(AppRoutes.profile),
                    title: AppString.profile,
                    icon: Icons.person_2_outlined),

                drawerItem(
                    // onTap: () => Get.toNamed(AppRoutes.setting),
                    title: AppString.myResidences,
                    icon: Icons.account_balance_outlined),
                drawerItem(
                    // onTap: () => Get.toNamed(AppRoutes.setting),
                    title: AppString.myCoupons,
                    icon: Icons.local_offer),

                drawerItem(
                    // onTap: () => Get.toNamed(AppRoutes.setting),
                    title: AppString.support,
                    icon: Icons.verified_user_outlined),

                drawerItem(
                    onTap: () => Get.toNamed(AppRoutes.setting),
                    title: AppString.settings,
                    icon: Icons.settings_outlined),
                // drawerItem(
                //     onTap: () => Get.toNamed(AppRoutes.about),
                //     title: AppString.about,
                //     icon: Icons.info_outline),
                drawerItem(
                    onTap: () => Get.toNamed(AppRoutes.termsOfServices),
                    title: AppString.termsOfServices,
                    icon: Icons.list_alt_rounded),

                drawerItem(
                    // onTap: () => Get.toNamed(AppRoutes.setting),
                    title: AppString.aboutMe,
                    icon: Icons.info_outline),
                drawerItem(
                    onTap: () => Get.toNamed(AppRoutes.privacyPolicy),
                    title: AppString.privacyPolicy,
                    icon: Icons.privacy_tip_outlined),
                50.height,

                drawerItem(
                    onTap: PrefsHelper.removeAllPrefData,
                    title: AppString.logOut,
                    icon: Icons.logout),
              ],
            ),
          ),
        ));
  }
}
