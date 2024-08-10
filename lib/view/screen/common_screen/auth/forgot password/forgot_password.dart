import 'package:flutter/material.dart';
import '../../../../../extension/my_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../controllers/common_controller/auth/forget_password_controller.dart';
import '../../../../../helpers/other_helper.dart';
import '../../../../../utils/app_string.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/text/common_text.dart';
import '../../../../component/text_field/common_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgetPasswordController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const CommonText(
            text: AppString.forgotPassword,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                60.height,
                const CommonText(
                  maxLines: 3,
                  text: AppString.enterEmailResetPassword,
                  fontWeight: FontWeight.w600,
                  bottom: 40,
                ),
                const CommonText(
                  text: AppString.email,
                  fontWeight: FontWeight.w600,
                  bottom: 12,
                ).start,
                CommonTextField(
                  controller: controller.emailController,
                  hintText: AppString.email,
                  validator: OtherHelper.validator,
                ),
                100.height,
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: CommonButton(
            buttonHeight: 48,
            titleText: AppString.getVerificationCode,
            isLoading: controller.isLoadingEmail,
            onTap: () {
              if (formKey.currentState!.validate()) {
                controller.forgotPasswordRepo();
              }
            },
          ),
        ),
      ),
    );
  }
}
