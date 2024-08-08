import 'package:flutter/material.dart';
import 'package:rentx/utils/app_colors.dart';
import '../../../../../core/app_routes.dart';
import '../../../../../extension/my_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../controllers/common_controller/auth/forget_password_controller.dart';
import '../../../../../helpers/other_helper.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/text/common_text.dart';
import '../../../../component/text_field/common_text_field.dart';

class CreatePassword extends StatelessWidget {
  CreatePassword({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CommonText(
          text: AppRoutes.createPassword,
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
      ),
      body: GetBuilder<ForgetPasswordController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  64.height,
                  const Center(
                    child: CommonText(
                      text: AppString.nowResetYour,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Center(
                    child: CommonText(
                      text: AppString.password,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: AppColors.s200,
                    ),
                  ),
                  const Center(
                    child: CommonText(
                      text: AppString.passwordLength,
                      fontSize: 14,
                      top: 12,
                      bottom: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const CommonText(
                    text: AppString.password,
                    fontWeight: FontWeight.w600,
                    bottom: 8,
                  ).start,
                  CommonTextField(
                    controller: controller.passwordController,
                    hintText: AppString.password,
                    isPassword: true,
                    validator: OtherHelper.passwordValidator,
                  ),
                  const CommonText(
                    text: AppString.confirmPassword,
                    fontWeight: FontWeight.w600,
                    bottom: 8,
                    top: 16,
                  ).start,
                  CommonTextField(
                    controller: controller.confirmPasswordController,
                    hintText: AppString.confirmPassword,
                    isPassword: true,
                    validator: (value) => OtherHelper.confirmPasswordValidator(
                        value, controller.passwordController),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: CommonButton(
          titleText: AppString.continues,
          isLoading: ForgetPasswordController.instance.isLoadingReset,
          onTap: () {
            if (formKey.currentState!.validate()) {
              ForgetPasswordController.instance.resetPasswordRepo();
            }
          },
        ),
      ),
    );
  }
}
