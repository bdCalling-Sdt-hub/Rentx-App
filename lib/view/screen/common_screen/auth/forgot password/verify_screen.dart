import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/extension/my_extension.dart';
import '../../../../../controllers/common_controller/auth/forget_password_controller.dart';
import '../../../../../utils/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../utils/app_string.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/text/common_text.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    ForgetPasswordController.instance.startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CommonText(
          text: AppString.forgotPassword,
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
      ),
      body: GetBuilder<ForgetPasswordController>(
        builder: (controller) => SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Center(
                  child: CommonText(
                    text: AppString.enterTheCodeThatWasSentYourEmail,
                    fontSize: 20,
                    top: 60,
                    bottom: 30,
                    maxLines: 3,
                  ),
                ),
                Flexible(
                  flex: 0,
                  child: PinCodeTextField(
                    controller: controller.otpController,
                    autoDisposeControllers: false,
                    cursorColor: AppColors.black,
                    appContext: (context),
                    autoFocus: true,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      fieldHeight: 60.h,
                      fieldWidth: 44.w,
                      borderRadius: BorderRadius.circular(6),
                      activeFillColor: AppColors.primaryColor,
                      selectedFillColor: AppColors.primaryColor,
                      inactiveFillColor: AppColors.primaryColor,
                      borderWidth: 0.5.w,
                      selectedColor: AppColors.highLight,
                      activeColor: AppColors.primaryColor,
                      inactiveColor: AppColors.black,
                    ),
                    length: 6,
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.disabled,
                    enableActiveFill: true,
                    validator: (value) {
                      if (value != null && value.length == 6) {
                        return null;
                      } else {
                        return AppString.otpIsInValid;
                      }
                    },
                  ),
                ),
                100.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    controller.time == '00:00'
                        ? const Center(
                            child: CommonText(
                                text: AppString.didNotReceiveTheCode))
                        : 0.height,
                    GestureDetector(
                      onTap: controller.time == '00:00'
                          ? () {
                              controller.startTimer();
                              controller.forgotPasswordRepo();
                            }
                          : () {},
                      child: CommonText(
                        text: controller.time == '00:00'
                            ? AppString.resendCode
                            : "${AppString.resendCodeIn} ${controller.time} ${AppString.minute}",
                        fontSize: 18,
                        textDecoration: controller.time == '00:00'? TextDecoration.underline : TextDecoration.none,
                        color: controller.time == '00:00'? AppColors.s500 : AppColors.white
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: CommonButton(
          buttonHeight: 48,
            titleText: AppString.verify,
            isLoading: ForgetPasswordController.instance.isLoadingVerify,
            onTap: () {
              if (formKey.currentState!.validate()) {
                ForgetPasswordController.instance.verifyOtpRepo();
              }
            }),
      ),
    );
  }
}
