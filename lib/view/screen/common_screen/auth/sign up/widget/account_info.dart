import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/common_controller/auth/landlord_Info_controller.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_string.dart';

import '../../../../../../helpers/other_helper.dart';
import '../../../../../../utils/app_colors.dart';
import '../../../../../component/text/common_text.dart';
import '../../../../../component/text_field/common_text_field.dart';
import 'button_with_icon.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandlordInfoController>(
      builder: (controller) => Column(
        children: [
          Row(
            children: [
              ButtonWithIcon(
                title: AppString.bank,
                icon: Icons.account_balance_outlined,
                color: controller.selectedOption == AppString.bank
                    ? AppColors.s200
                    : AppColors.white,
                onTap: () => controller.selectPaymentOption(0),
              ),
              ButtonWithIcon(
                title: AppString.card,
                icon: Icons.food_bank,
                color: controller.selectedOption == AppString.card
                    ? AppColors.s200
                    : AppColors.white,
                onTap: () => controller.selectPaymentOption(1),
              ),
              ButtonWithIcon(
                title: AppString.digitalPay,
                icon: Icons.food_bank,
                color: controller.selectedOption == AppString.digitalPay
                    ? AppColors.s200
                    : AppColors.white,
                width: 140,
                onTap: () => controller.selectPaymentOption(2),
              ),
            ],
          ),
          if (controller.selectedOption == AppString.bank)
            Column(
              children: [
                const CommonText(
                  text: AppString.accountName,
                  fontWeight: FontWeight.w600,
                  bottom: 8,
                  top: 16,
                ).start,
                CommonTextField(
                  controller: controller.accountNameController,
                  hintText: AppString.accountName,
                  validator: OtherHelper.validator,
                ),
                const CommonText(
                  text: AppString.accountNumber,
                  fontWeight: FontWeight.w600,
                  bottom: 8,
                  top: 16,
                ).start,
                CommonTextField(
                  controller: controller.accountNumberController,
                  hintText: AppString.accountNumber,
                  keyboardType: TextInputType.number,
                  validator: OtherHelper.validator,
                ),
                const CommonText(
                  text: AppString.bankName,
                  fontWeight: FontWeight.w600,
                  bottom: 8,
                  top: 16,
                ).start,
                CommonTextField(
                  controller: controller.bankController,
                  hintText: AppString.bankName,
                  validator: OtherHelper.validator,
                ),
                const CommonText(
                  text: AppString.branchName,
                  fontWeight: FontWeight.w600,
                  bottom: 8,
                  top: 16,
                ).start,
                CommonTextField(
                  controller: controller.branchNameController,
                  hintText: AppString.branchName,
                  validator: OtherHelper.validator,
                ),
              ],
            ),
          if (controller.selectedOption == AppString.card)
            Column(
              children: [
                const CommonText(
                  text: AppString.cardNumber,
                  fontWeight: FontWeight.w600,
                  bottom: 8,
                  top: 16,
                ).start,
                CommonTextField(
                  controller: controller.cardNumberController,
                  hintText: AppString.cardNumber,
                  validator: OtherHelper.validator,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CommonText(
                            text: AppString.expiration,
                            fontWeight: FontWeight.w600,
                            bottom: 8,
                            top: 16,
                          ).start,
                          CommonTextField(
                            controller: controller.expirationController,
                            hintText: AppString.expiration,
                            keyboardType: TextInputType.number,
                            validator: OtherHelper.validator,
                          ),
                        ],
                      ),
                    ),
                    20.width,
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CommonText(
                            text: AppString.cvc,
                            fontWeight: FontWeight.w600,
                            bottom: 8,
                            top: 16,
                          ).start,
                          CommonTextField(
                            controller: controller.cvcController,
                            hintText: AppString.cvc,
                            validator: OtherHelper.validator,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const CommonText(
                  text: AppString.country,
                  fontWeight: FontWeight.w600,
                  bottom: 8,
                  top: 16,
                ).start,
                CommonTextField(
                  controller: controller.countryController,
                  hintText: AppString.country,
                  validator: OtherHelper.validator,
                ),
              ],
            ),
          if (controller.selectedOption == AppString.digitalPay)
            Column(
              children: [
                const CommonText(
                  text: AppString.accountNumber,
                  fontWeight: FontWeight.w600,
                  bottom: 8,
                  top: 16,
                ).start,
                CommonTextField(
                  controller: controller.dAccountNumberController,
                  hintText: AppString.accountNumber,
                  validator: OtherHelper.validator,
                ),
                const CommonText(
                  text: AppString.country,
                  fontWeight: FontWeight.w600,
                  bottom: 8,
                  top: 16,
                ).start,
                CommonTextField(
                  controller: controller.dCountryController,
                  hintText: AppString.country,
                  keyboardType: TextInputType.number,
                  validator: OtherHelper.validator,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
