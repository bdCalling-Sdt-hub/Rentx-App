import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import '../../../../../core/app_routes.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_images.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/other_widgets/coupon_card.dart';
import '../../../../component/text/common_text.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: AppColors.background,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: AppString.rewardPoints,
                fontSize: 18,
                left: 20,
              ),
              CommonText(
                text: "2000",
                fontSize: 26,
                left: 20,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
        12.height,
        Container(
          color: AppColors.background,
          child: Column(
            children: [
              12.height,
              Row(
                children: [
                  const CommonText(
                    text: AppString.all,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    bottom: 8,
                    left: 20,
                  ).start,
                  const CommonText(
                    text: AppString.available,
                    left: 20,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    bottom: 8,
                  ).start,
                ],
              ),
              Column(
                children: List.generate(
                  5,
                  (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
                      child: CouponCard(
                        onTap: () {
                          Get.toNamed(AppRoutes.couponDetailsScreen);
                        },
                        couponImage: index % 2 == 0
                            ? AppImages.yellow
                            : AppImages.gentlepark,
                        name: index % 2 == 0 ? "Yellow" : "Gentlepark",

                        couponHeight: 110,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
