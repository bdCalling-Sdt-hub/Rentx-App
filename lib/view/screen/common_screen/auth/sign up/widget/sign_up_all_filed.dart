import 'package:flutter/material.dart';
import 'package:rentx/view/component/text/common_text.dart';
import '../../../../../../extension/my_extension.dart';
import 'package:get/get.dart';
import '../../../../../../controllers/common_controller/auth/sign_up_controller.dart';
import '../../../../../../helpers/other_helper.dart';
import '../../../../../../utils/app_colors.dart';
import '../../../../../../utils/app_string.dart';
import '../../../../../component/text_field/common_text_field.dart';

class SignUpAllField extends StatefulWidget {
  const SignUpAllField({super.key});

  @override
  State<SignUpAllField> createState() => _SignUpAllFieldState();
}

class _SignUpAllFieldState extends State<SignUpAllField> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      builder: (controller) {
        return Column(
          children: [
            const CommonText(
              text: AppString.fullName,
              fontWeight: FontWeight.w600,
              bottom: 8,
            ).start,
            CommonTextField(
              prefixIcon: const Icon(
                Icons.person_2,
              ),
              hintText: AppString.fullName,
              controller: controller.nameController,
              validator: OtherHelper.validator,
            ),
            const CommonText(
              text: AppString.email,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 16,
            ).start,
            CommonTextField(
              controller: controller.emailController,
              prefixIcon: const Icon(Icons.mail, color: AppColors.black),
              hintText: AppString.email,
              validator: OtherHelper.emailValidator,
            ),
            const CommonText(
              text: AppString.password,
              fontWeight: FontWeight.w600,
              bottom: 8,
              top: 16,
            ).start,
            CommonTextField(
              controller: controller.passwordController,
              prefixIcon: const Icon(Icons.lock, color: AppColors.black),
              isPassword: true,
              hintText: AppString.password,
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
              prefixIcon: const Icon(Icons.lock, color: AppColors.black),
              isPassword: true,
              hintText: AppString.confirmPassword,
              validator: (value) => OtherHelper.confirmPasswordValidator(
                  value, controller.passwordController),
            ),
            Row(
              children: [
                Checkbox(
                  value: controller.isAgree,
                  onChanged: controller.selectAgree,
                ),
                const CommonText(text: AppString.agreeWithTermsAndServices)
              ],
            )
          ],
        );
      },
    );
  }
}
