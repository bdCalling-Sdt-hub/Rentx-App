import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rentx/extension/my_extension.dart';
import '../../../../../controllers/common_controller/auth/sign_up_controller.dart';
import '../../../../../utils/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../utils/app_string.dart';
import '../../../../component/button/common_button.dart';
import '../../../../component/text/common_text.dart';

class VerifyUser extends StatefulWidget {
  const VerifyUser({super.key});

  @override
  State<VerifyUser> createState() => _VerifyUserState();
}

class _VerifyUserState extends State<VerifyUser> {
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    SignUpController.instance.startTimer();
    super.initState();
  }

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
            padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: AppString.enter,
                            style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: AppString.verification,
                            style: GoogleFonts.poppins(
                              color: AppColors.s500,
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: AppString.code,
                            style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Center(
                    child: CommonText(
                      text: AppString.enterTheCodeThatWasSentYourEmail,
                      fontSize: 14,
                      bottom: 20,
                      top: 12,
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
                  20.height,
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
                                controller.signUpUser();
                              }
                            : () {},
                        child: CommonText(
                          text: controller.time == '00:00'
                              ? AppString.resendCode
                              : "${AppString.resendCodeIn} ${controller.time} ${AppString.minute}",
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  100.height,
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: GetBuilder<SignUpController>(
          builder: (controller) => CommonButton(
              titleText: AppString.verify,
              isLoading: controller.isLoadingVerify,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  controller.verifyOtpRepo();
                }
              }),
        ),
      ),
    );
  }
}
