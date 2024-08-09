

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/MerchantControllers/PaymentController/payment_controller.dart';
import 'package:rentx/core/app_routes.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/helpers/other_helper.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/button/common_button.dart';
import 'package:rentx/view/component/image/common_image.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/component/text_field/custom_text_field.dart';

import '../../../../utils/app_icons.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText(text: ""),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: GetBuilder<PaymentController>(builder: (paymentController) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(text: AppString.paymentAmount, fontSize: 16, fontWeight: FontWeight.w500,),
              8.height,
              CommonText(text: "৳2000.00", fontSize: 26, fontWeight: FontWeight.w700,),
              20.height,
              CommonText(text: AppString.nameOnCard),
              12.height,
              CustomTextField(
                controller: paymentController.nameController,
                validator: OtherHelper.validator,
                hindText: AppString.enterNameOnCard,
              ),
              16.height,
              CommonText(text: AppString.cardNumber),
              12.height,
              CustomTextField(
                controller: paymentController.cardNumberController,
                validator: OtherHelper.validator,
                hindText: AppString.enterCardNumber,
                isPrefixIcon: false,
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: CommonImage(imageSrc: AppIcons.rentxText, imageType: ImageType.png, fill: BoxFit.contain),
                ),
              ),
              16.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(text: AppString.expiration),
                        12.height,
                        CustomTextField(
                          controller: paymentController.expiryDateController,
                          validator: OtherHelper.validator,
                          hindText: AppString.dateMonthYear,
                        ),
                      ],
                    ),
                  ),

                  12.width,

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonText(text: AppString.cvc),
                        12.height,
                        CustomTextField(
                          controller: paymentController.cvcNumberController,
                          validator: OtherHelper.validator,
                          hindText: AppString.enterCardNumber,
                          isPrefixIcon: false,
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: CommonImage(imageSrc: AppIcons.cvcIcon, fill: BoxFit.contain),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              16.height,
              CommonText(text: AppString.country),
              12.height,
              CustomTextField(
                controller: paymentController.countryNameController,
                hindText: AppString.enterCountryName,
                validator: OtherHelper.validator,
              ),
              48.height,
              CommonButton(
                onTap: () => Get.toNamed(AppRoutes.paymentSuccessfulScreen),
                titleText: AppString.pay, buttonHeight: 48.h,)
            ],
          );
        },
        ),
      ),
    );
  }
}
