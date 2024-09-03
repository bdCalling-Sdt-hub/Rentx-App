import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../extension/my_extension.dart';
import '../../../../../controllers/common_controller/auth/change_password_controller.dart';
import '../../../../../core/app_routes.dart';
import '../../../../../helpers/other_helper.dart';
import '../../../../../utils/app_colors.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/text/common_text.dart';
import '../../../../component/text_field/common_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const CommonText(
          text: AppString.changePassword,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: GetBuilder<ChangePasswordController>(
        builder: (controller) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  70.height,
                  CommonText(
                    text: AppString.currentPassword,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  8.height,
                  CommonTextField(
                    controller: controller.currentPasswordController,
                    hintText: AppString.currentPassword,
                    validator: OtherHelper.passwordValidator,
                    isPassword: true,
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 20.sp,
                    ),
                  ),
                  16.height,
                  CommonText(
                    text: AppString.newPassword,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  8.height,
                  CommonTextField(
                    controller: controller.newPasswordController,
                    hintText: AppString.newPassword,
                    validator: OtherHelper.passwordValidator,
                    isPassword: true,
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 20.sp,
                    ),
                  ),
                  16.height,
                  CommonText(
                    text: AppString.confirmNewPassword,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                  8.height,
                  CommonTextField(
                    controller: controller.confirmPasswordController,
                    hintText: AppString.confirmPassword,
                    validator: (value) => OtherHelper.confirmPasswordValidator(
                        value, controller.newPasswordController),
                    isPassword: true,
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 20.sp,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () => Get.toNamed(AppRoutes.forgotPassword),
                      child: CommonText(
                        text: AppString.forgotPassword,
                        textDecoration: TextDecoration.underline,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        top: 16.h,
                        bottom: 20.h,
                      ),
                    ),
                  ),
                  Spacer(),
                  CommonButton(
                    titleText: AppString.submit,
                    isLoading: controller.isLoading,
                    buttonHeight: 58,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        controller.changePasswordRepo();
                      }
                    },
                  ),
                  20.height
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
