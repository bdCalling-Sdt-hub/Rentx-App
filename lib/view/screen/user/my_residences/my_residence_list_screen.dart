
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_icons.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/button/common_button.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/pop_up/common_pop_menu.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../core/app_routes.dart';

class MyResidenceListScreen extends StatelessWidget {
  const MyResidenceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText(text: AppString.myResidenceList, fontSize: 20, fontWeight: FontWeight.w700,),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            16.height,
            SizedBox(
              width: Get.width,
              height: Get.height * 0.11 * 3,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => Get.toNamed(AppRoutes.myResidences),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(6)
                    ),
                    margin: EdgeInsets.only(bottom: 8),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonText(text: "House Number 1", color: AppColors.background, fontSize: 18, fontWeight: FontWeight.w600,),
                                CommonText(text: "Block A, Road 5, Banasree, Dhaka.", color: AppColors.background,),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              deleteItemsPopUp(itemsId: "", onDelete: () {

                              },);
                            },
                              child: CommonImage(imageSrc: AppIcons.deleteIcon, height: 18, width: 18,))
                        ],
                      ),
                    ),
                  ),
                );
              },),
            ),
            12.height,
            Align(
              alignment: Alignment.centerRight,
              child: CommonButton(
                onTap: () => Get.toNamed(AppRoutes.landlordInformation),
                buttonHeight: 48.h,
                buttonWidth: Get.width * 0.4,
                buttonColor: AppColors.background,
                icon: Icon(Icons.add, color: AppColors.p500,),
                titleText: AppString.addMore,
                titleColor: AppColors.p500,
                borderColor: AppColors.p500, ),
            )
          ],
        ),
      ),
    );
  }
}
