import 'package:flutter/material.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:get/get.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import '../../../core/app_routes.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_string.dart';
import '../../component/button/common_button.dart';
import '../../component/image/common_image.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.transparent,
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.13, -0.99),
            end: Alignment(-0.13, 0.99),
            colors: [Color(0xFF183962), Color(0xFFBD834F)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonImage(
                        imageSrc: AppImages.logo,
                        imageType: ImageType.png,
                        height: 24,
                        width: 75,
                      ),
                      TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(AppColors.b100),
                          ),
                          onPressed: () {
                            Get.toNamed(AppRoutes.signIn);
                          },
                          child: const CommonText(
                            text: AppString.skip,
                            fontSize: 18,
                            color: AppColors.white,
                          ))
                    ],
                  ),
                  30.height,

                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          CommonImage(
                            imageSrc: AppImages.getVoucher,
                            height: 250,
                            width: 360,
                            imageType: ImageType.png,
                          ),
                          const CommonText(
                            text: AppString.getVoucher,
                            fontSize: 26,
                            maxLines: 2,
                            top: 26,
                          ),
                          const CommonText(
                            text: AppString.redeemYourPointsDetails,
                            fontSize: 14,
                            maxLines: 2,
                            top: 26,
                          )
                        ],
                      ),
                    ),
                  ),

                  30.height,
                  Column(
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              3,
                              (index) => Container(
                                    margin: const EdgeInsets.all(5),
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: index == 2
                                          ? AppColors.black
                                          : AppColors.primaryColor,
                                    ),
                                  )),
                        ),
                      ),

                      ///===========================description======================///
                    ],
                  )

                  ///============================= dot indicator ==========================///
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 80),
            child: CommonButton(
              onTap: () {
                Get.toNamed(AppRoutes.signUp);
              },
              titleText: AppString.getStarted,
              buttonColor: AppColors.white,
              titleColor: AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
