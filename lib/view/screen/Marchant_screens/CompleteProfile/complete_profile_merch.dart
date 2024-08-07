
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/common_controller/auth/sign_up_controller.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/helpers/other_helper.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/view/component/button/common_button.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/component/text_field/custom_text_field.dart';
import 'package:rentx/view/screen/Marchant_screens/CompleteProfile/component/upload_container.dart';

class CompleteProfileMerch extends StatelessWidget {
  const CompleteProfileMerch({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonText(text: ""),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GetBuilder<SignUpController>(builder: (signUpController) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.height,
              Align(
                alignment: Alignment.center,
                child: CommonText(
                  text: "Give your Authentic", fontWeight: FontWeight.w600, fontSize: 24,),
              ),
              Align(
                  alignment: Alignment.center,
                  child: CommonText(text: "Information.", fontWeight: FontWeight.w600, fontSize: 24, color: AppColors.s500,)
              ),
              20.height,
              CommonText(text: "Shop Logo", fontWeight: FontWeight.w600, fontSize: 16,),
              12.height,
              UploadContainer(onTap: () => signUpController.openGallery(), uploadFile: signUpController.image, uploadText: ""),
              16.height,
              CommonText(text: "Shop Name", fontWeight: FontWeight.w600, fontSize: 16,),
              12.height,
              CustomTextField(
                validator: OtherHelper.validator,
                controller: signUpController.shopNameController,
                hindText: "Enter shop name",
              ),
              16.height,
              CommonText(text: "Shop Type", fontWeight: FontWeight.w600, fontSize: 16,),
              12.height,
              CustomTextField(
                validator: OtherHelper.validator,
                controller: signUpController.shopTypeController,
                hindText: "Enter shop type",
              ),
              16.height,
              CommonText(text: "Shop Address", fontWeight: FontWeight.w600, fontSize: 16,),
              12.height,
              CustomTextField(
                validator: OtherHelper.validator,
                controller: signUpController.shopAddressController,
                hindText: "Enter shop address",
              ),
              70.height,
              CommonButton(titleText: "Done")
            ],
          );
        },),
      ),
    );
  }
}
