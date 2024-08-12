import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/helpers/prefs_helper.dart';
import '../../../../controllers/common_controller/profile/profile_controller.dart';
import '../../../../core/app_routes.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_string.dart';
import '../../../component/bottom_nav_bar/common_bottom_bar.dart';
import '../../../component/image/common_image.dart';
import '../../../component/other_widgets/item.dart';
import '../../../component/pop_up/common_pop_menu.dart';
import '../../../component/text/common_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const CommonText(
          text: AppString.profile,
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
      ),
      body: GetBuilder<ProfileController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
            child: Column(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 60.sp,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: CommonImage(
                        imageSrc: AppImages.profile,
                        imageType: ImageType.png,
                        height: 120,
                        width: 120,
                        defaultImage: AppImages.profile,
                      ),
                    ),
                  ),
                ),
                const CommonText(
                  text: "Naimul Hassan",
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  top: 8,
                  bottom: 16,
                ),
                customContainer(
                    controller: controller,
                    item: Column(
                      children: [
                        Item(
                          icon: Icons.person,
                          title: AppString.personalInformation,
                          onTap: () => Get.toNamed(AppRoutes.editProfile),
                        ),
                        16.height,
                        Item(
                          icon: Icons.home,
                          title: AppString.myResidences,
                          onTap: () => Get.toNamed(AppRoutes.myResidenceListScreen),
                        ),
                        16.height,
                        Item(
                          image: AppIcons.coupons,
                          title: AppString.myCoupons,
                          onTap: () => Get.toNamed(AppRoutes.myCoupons),
                          // onTap: () => Get.toNamed(AppRoutes.setting),
                        ),
                        16.height,
                        Item(
                          icon: Icons.settings,
                          title: AppString.generalSettings,
                          onTap: () => Get.toNamed(AppRoutes.setting),
                        ),
                        16.height,
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.language,
                                    color: AppColors.s500,
                                  ),
                                  CommonText(
                                    text: controller.selectedLanguage,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                    left: 16,
                                  ),
                                  const Spacer(),
                                  PopUpMenu(
                                      items: controller.languages,
                                      iconColor: AppColors.s500,
                                      selectedItem: [
                                        controller.selectedLanguage
                                      ],
                                      onTap: controller.selectLanguage)
                                ],
                              ),
                            ],
                          ),
                        ),
                        16.height,
                        Item(
                          icon: Icons.verified_user_outlined,
                          title: AppString.support,
                          onTap: () => Get.toNamed(AppRoutes.supportScreen),
                        ),
                        16.height,
                        Item(
                          icon: Icons.info_outline,
                          title: AppString.aboutMe,
                          onTap: () => Get.toNamed(AppRoutes.aboutUs),
                        ),
                      ],
                    )),
                16.height,
                customContainer(
                    controller: controller,
                    item: const Column(
                      children: [
                        Item(
                          icon: Icons.logout,
                          title: AppString.logOut,
                          onTap: PrefsHelper.removeAllPrefData,
                        ),
                      ],
                    )),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: const CommonBottomNavBar(
        currentIndex: 4,
      ),
    );
  }

  Container customContainer(
      {required ProfileController controller, required Widget item}) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.s200)),
      child: item,
    );
  }
}
