import 'package:flutter/material.dart';
import '../../../../../core/app_routes.dart';
import '../../../../../extension/my_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../controllers/common_controller/auth/sign_up_controller.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/text/common_text.dart';
import 'widget/already_accunt_rich_text.dart';
import 'widget/sign_up_all_filed.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: const [
            CommonText(
              text: "Rentx.",
              color: AppColors.s300,
              right: 24,
            ),
          ],
        ),
        body: GetBuilder<SignUpController>(
          builder: (controller) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Form(
                key: formKey,
                child: Column(children: [
                  const CommonText(
                    text: AppString.welcomeHere,
                    fontSize: 26,
                    bottom: 8,
                    maxLines: 2,
                  ),
                  const CommonText(
                    text: AppString.createAnAccount,
                    color: AppColors.s500,
                    fontSize: 26,
                    bottom: 8,
                    maxLines: 2,
                  ),
                  const CommonText(
                    text: AppString.fillInYourInformation,
                    fontSize: 14,
                    bottom: 8,
                    maxLines: 2,
                  ),
                  const SignUpAllField(),
                  16.height,
                  CommonButton(
                    titleText: AppString.signUp,
                    isLoading: controller.isLoading,
                    buttonColor: AppColors.s200,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        Get.toNamed(AppRoutes.verifyUser);
                      }
                    },
                  ),
                  24.height,
                  const AlreadyAccountRichText()
                ]),
              ),
            );
          },
        ));
  }
}
