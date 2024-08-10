import 'package:flutter/material.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:get/get.dart';
import 'package:rentx/view/screen/promotional_screen/sceond_page.dart';

import '../../../core/app_routes.dart';
import '../../../utils/app_images.dart';
import '../../../utils/app_string.dart';
import '../../component/button/common_button.dart';
import '../../component/image/common_image.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.transparent,
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFFE2CB65), Color(0xFF8845EA)],
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
                        imageSrc: AppImages.logoBlack,
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
                    child: Column(
                      children: [
                        CommonImage(
                          imageSrc: AppImages.earnPoint,
                          height: 250,
                          width: 360,
                          imageType: ImageType.png,
                        ),
                        const CommonText(
                          text: AppString.earnPointDetails,
                          fontSize: 26,
                          maxLines: 2,
                          top: 26,
                        ),
                        const CommonText(
                          text: AppString.payYourRentDetails,
                          fontSize: 14,
                          maxLines: 2,
                          top: 26,
                        )
                      ],
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
                                      color: index == 0
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
                Get.to(const SecondPage());
              },
              titleText: AppString.next,
              buttonColor: AppColors.white,
              titleColor: AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
