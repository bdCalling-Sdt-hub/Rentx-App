import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../controllers/common_controller/profile/profile_controller.dart';
import '../../../../core/app_routes.dart';
import '../../../../utils/app_icons.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_string.dart';
import '../../../component/image/common_image.dart';
import '../../../component/other_widgets/item.dart';
import '../../../component/pop_up/common_pop_menu.dart';

class ProfileScreenMarch extends StatelessWidget {
  const ProfileScreenMarch({super.key});

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
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            child: Column(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 60.r,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: CommonImage(
                        imageSrc: "assets/images/profilePhoto.png",
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
                  top: 20,
                ),
                const CommonText(
                  text: "example@gmail.com",
                  fontSize: 14,
                  bottom: 24,
                ),
                customContainer(
                    controller: controller,
                    // height: 250.h,
                    item: Column(
                      children: [
                        Item(
                          icon: Icons.account_circle_outlined,
                          title: AppString.personalInformation,
                          onTap: () => Get.toNamed(AppRoutes.editProfile),
                        ),
                        12.height,
                        Item(
                          image: AppIcons.coupons,
                          title: AppString.myCoupons,
                          onTap: () => Get.toNamed(AppRoutes.myCoupons),
                          // onTap: () => Get.toNamed(AppRoutes.setting),
                        ),
                        12.height,
                        Item(
                            onTap: () =>
                                Get.toNamed(AppRoutes.voucherRequestScreen),
                            title: AppString.requestForVoucher,
                            image: AppIcons.voucherRequestIcon),
                        12.height,
                        Item(
                          icon: Icons.settings_outlined,
                          title: AppString.generalSettings,
                          onTap: () => Get.toNamed(AppRoutes.setting),
                        ),
                        12.height,
                        Item(
                          icon: Icons.verified_user_outlined,
                          title: AppString.support,
                          onTap: () => Get.toNamed(AppRoutes.supportScreen),
                        ),
                        12.height,
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
                      ],
                    )),
                20.height,
                customContainer(
                    controller: controller,
                    vertical: 8,
                    item: Item(
                      icon: Icons.logout,
                      title: AppString.logOut,
                      onTap: () => logOutPopUp(),
                    ))
              ],
            ),
          );
        },
      ),
      // bottomNavigationBar: const BottomBarMarch(
      //   currentIndex: 3,
      // ),
    );
  }

  Container customContainer(
      {required ProfileController controller,
      double vertical = 20,
      required Widget item}) {
    return Container(
      // height: height,
      width: Get.width,
      padding: EdgeInsets.symmetric(vertical: vertical),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.s200)),
      child: item,
    );
  }
}
