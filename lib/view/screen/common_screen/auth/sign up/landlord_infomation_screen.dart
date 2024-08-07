import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/core/app_routes.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/button/common_button.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/common_screen/auth/sign%20up/widget/landlord_info_all_filed.dart';

import 'widget/account_info.dart';
import 'widget/button_with_icon.dart';

class LandlordInformationScreen extends StatelessWidget {
  const LandlordInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CommonText(
          text: AppString.landlordInformation,
          fontSize: 24,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            const LandlordInfoAllFiled(),
            16.height,
            const CommonButton(
              titleText: AppString.addMore,
              buttonWidth: 150,
              titleSize: 20,
              buttonColor: AppColors.transparent,
              titleColor: AppColors.white,
            ).end,
            const CommonText(
              text: AppString.accountInformation,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              top: 12,
            ).start,
            const Divider(),

            const AccountInfo(),
            40.height,
            CommonButton(
              titleText: AppString.done,
              buttonColor: AppColors.s200,
              onTap: () => Get.toNamed(AppRoutes.signIn),
            )
          ],
        ),
      ),
    );
  }
}
