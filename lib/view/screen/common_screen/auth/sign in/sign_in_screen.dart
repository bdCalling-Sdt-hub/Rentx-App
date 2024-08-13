import 'package:flutter/material.dart';
import 'package:rentx/view/screen/Marchant_screens/Components/bottom_bar_march.dart';
import '../../../../../extension/my_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../controllers/common_controller/auth/sign_in_controller.dart';
import '../../../../../core/app_routes.dart';
import '../../../../../helpers/other_helper.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/text/common_text.dart';
import '../../../../component/text_field/common_text_field.dart';
import 'widget/do_not_account.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GetBuilder<SignInController>(
          builder: (controller) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const CommonText(
                      text: AppString.logIntoYourAccount,
                      fontSize: 26,
                      bottom: 70,
                      top: 36,
                      maxLines: 2,
                    ),
                    const CommonText(
                      text: AppString.email,
                      fontWeight: FontWeight.w600,
                      bottom: 8,
                    ).start,
                    CommonTextField(
                      controller: controller.emailController,
                      hintText: AppString.email,
                      validator: OtherHelper.validator,
                    ),
                    const CommonText(
                      text: AppString.password,
                      fontWeight: FontWeight.w600,
                      bottom: 8,
                      top: 16,
                    ).start,
                    CommonTextField(
                      controller: controller.passwordController,
                      hintText: AppString.password,
                      validator: OtherHelper.validator,
                      isPassword: true,
                    ),
                    8.height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: controller.isRemember,
                              onChanged: controller.selectRemember,
                            ),
                            const CommonText(
                              text: AppString.rememberMe,
                              fontSize: 14,
                            ),
                          ],
                        ),
                        Flexible(
                          child: GestureDetector(
                            onTap: () => Get.toNamed(AppRoutes.forgotPassword),
                            child: const CommonText(
                              text: AppString.forgotThePassword,
                              color: AppColors.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                    40.height,
                    CommonButton(
                      titleText: AppString.signIn,
                      isLoading: controller.isLoading,
                      buttonColor: AppColors.s200,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          controller.signInUser();
                        }
                      },
                    ),

                    ///<<<================= Merchant Sign In ================>>>
                    20.height,
                    CommonButton(
                      titleText: "Merchant SignIn",
                      isLoading: controller.isLoading,
                      onTap: () {
                        Get.to(() => BottomBarMarch());
                        // Get.toNamed(AppRoutes.homeScreenMarch);
                        // if (formKey.currentState!.validate()) {
                        //   controller.signInUser();
                        // }
                      },
                    ),

                    30.height,
                    const DoNotHaveAccount()
                  ],
                ),
              ),
            );
          },
        ));
  }
}
