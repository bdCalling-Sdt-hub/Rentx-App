import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/user/my_residences_controller.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/button/common_button.dart';
import 'package:rentx/view/component/text/common_text.dart';

import '../../../../helpers/other_helper.dart';
import '../../../../utils/app_colors.dart';
import '../../../component/text_field/common_phone_number_text_filed.dart';
import '../../../component/text_field/common_text_field.dart';
import '../../common_screen/auth/sign up/widget/account_info.dart';

class MyResidencesScreen extends StatelessWidget {
  const MyResidencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CommonText(
          text: AppString.myResidences,
          fontSize: 24,
        ),
      ),
      body: GetBuilder<MyResidencesController>(
        builder: (controller) => SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const CommonText(
                text: "House Number 1 :",
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: AppColors.s500,
                bottom: 15,
              ).start,
              const CommonText(
                text: "House Owner Information",
                fontWeight: FontWeight.w700,
                fontSize: 18,
                bottom: 15,
              ).start,
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
                text: AppString.phoneNumber,
                fontWeight: FontWeight.w600,
                bottom: 8,
                top: 16,
              ).start,
              CommonPhoneNumberTextFiled(
                controller: controller.numberController,
                countryChange: (value) => print(value),
              ),
              const CommonText(
                text: AppString.email,
                fontWeight: FontWeight.w600,
                bottom: 8,
              ).start,
              CommonTextField(
                controller: controller.emailController,
                prefixIcon: const Icon(Icons.mail, color: AppColors.black),
                hintText: AppString.email,
                validator: OtherHelper.emailValidator,
              ),
              const CommonText(
                text: AppString.houseName,
                fontWeight: FontWeight.w600,
                bottom: 8,
                top: 16,
              ).start,
              CommonTextField(
                controller: controller.houseNameController,
                prefixIcon: const Icon(Icons.lock, color: AppColors.black),
                hintText: AppString.houseName,
                validator: OtherHelper.validator,
              ),
              const CommonText(
                text: AppString.address,
                fontWeight: FontWeight.w600,
                bottom: 8,
                top: 16,
              ).start,
              CommonTextField(
                controller: controller.addressController,
                prefixIcon: const Icon(Icons.lock, color: AppColors.black),
                hintText: AppString.address,
                validator: OtherHelper.validator,
              ),
              const CommonText(
                text: AppString.accountInformation,
                fontWeight: FontWeight.w700,
                fontSize: 18,
                bottom: 8,
                top: 24,
              ).start,
              const Divider(),
              const AccountInfo(),
              16.height,
              const CommonButton(
                buttonWidth: 160,
                titleText: AppString.addMore,
                buttonColor: AppColors.transparent,
                titleColor: AppColors.white,
                titleSize: 16,
                icon: Icon(
                  Icons.add,
                  color: AppColors.white,
                ),
              ).end,
              16.height,
              const CommonButton(
                titleText: AppString.update,
                buttonColor: AppColors.s500,
                titleSize: 16,
                borderColor: AppColors.transparent,
              ),
                  // const Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     CommonButton(
                  //       buttonWidth: 160,
                  //       titleText: AppString.delete,
                  //       buttonColor: AppColors.s900,
                  //       titleColor: AppColors.white,
                  //       borderColor: AppColors.transparent,
                  //       titleSize: 16,
                  //       icon: Icon(
                  //         Icons.delete,
                  //         color: AppColors.white,
                  //       ),
                  //     ),
                  //     CommonButton(
                  //       buttonWidth: 160,
                  //       titleText: AppString.edit,
                  //       buttonColor: AppColors.s500,
                  //       titleSize: 16,
                  //       borderColor: AppColors.transparent,
                  //       icon: Icon(
                  //         Icons.edit,
                  //         color: AppColors.black,
                  //       ),
                  //     ),
                  //   ],
                  // ),

              // Column(
              //   children: [
              //     const CommonText(
              //       text: AppString.accountName,
              //       fontWeight: FontWeight.w600,
              //       bottom: 8,
              //       top: 16,
              //     ).start,
              //     CommonTextField(
              //       controller: controller.accountNameController,
              //       hintText: AppString.accountName,
              //       validator: OtherHelper.validator,
              //     ),
              //     const CommonText(
              //       text: AppString.accountNumber,
              //       fontWeight: FontWeight.w600,
              //       bottom: 8,
              //       top: 16,
              //     ).start,
              //     CommonTextField(
              //       controller: controller.accountNumberController,
              //       hintText: AppString.accountNumber,
              //       keyboardType: TextInputType.number,
              //       validator: OtherHelper.validator,
              //     ),
              //     const CommonText(
              //       text: AppString.bankName,
              //       fontWeight: FontWeight.w600,
              //       bottom: 8,
              //       top: 16,
              //     ).start,
              //     CommonTextField(
              //       controller: controller.bankController,
              //       hintText: AppString.bankName,
              //       validator: OtherHelper.validator,
              //     ),
              //     const CommonText(
              //       text: AppString.branchName,
              //       fontWeight: FontWeight.w600,
              //       bottom: 8,
              //       top: 16,
              //     ).start,
              //     CommonTextField(
              //       controller: controller.branchNameController,
              //       hintText: AppString.branchName,
              //       validator: OtherHelper.validator,
              //     ),
              //     16.height,
              //     const Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         CommonButton(
              //           buttonWidth: 160,
              //           titleText: AppString.delete,
              //           buttonColor: AppColors.s900,
              //           titleColor: AppColors.white,
              //           borderColor: AppColors.transparent,
              //           titleSize: 16,
              //           icon: Icon(
              //             Icons.delete,
              //             color: AppColors.white,
              //           ),
              //         ),
              //         CommonButton(
              //           buttonWidth: 160,
              //           titleText: AppString.edit,
              //           buttonColor: AppColors.s500,
              //           titleSize: 16,
              //           borderColor: AppColors.transparent,
              //           icon: Icon(
              //             Icons.edit,
              //             color: AppColors.black,
              //           ),
              //         ),
              //       ],
              //     ),
              //     16.height,
              //     const CommonButton(
              //       buttonWidth: 160,
              //       titleText: AppString.addMore,
              //       buttonColor: AppColors.transparent,
              //       titleColor: AppColors.white,
              //       titleSize: 16,
              //       icon: Icon(
              //         Icons.add,
              //         color: AppColors.white,
              //       ),
              //     ).end
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
