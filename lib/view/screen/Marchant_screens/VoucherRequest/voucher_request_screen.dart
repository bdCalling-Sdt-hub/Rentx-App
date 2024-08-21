
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/MerchantControllers/VoucherController/voucher_request_controller.dart';
import 'package:rentx/controllers/common_controller/profile/profile_controller.dart';
import 'package:rentx/extension/my_extension.dart';
import 'package:rentx/helpers/other_helper.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/button/common_button.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/component/text_field/common_text_field.dart';
import 'package:rentx/view/screen/Marchant_screens/CompleteProfile/component/upload_container.dart';

import '../../../../controllers/BottomNavbarController/bottom_navbar_controller.dart';
import '../../../../utils/app_colors.dart';
import '../../../component/pop_up/common_pop_menu.dart';
import '../Components/bottom_bar_march.dart';

class VoucherRequestScreen extends StatelessWidget {
  VoucherRequestScreen({super.key});

  ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CommonText(text: "Voucher Request", fontWeight: FontWeight.w700, fontSize: 20,),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: GetBuilder<VoucherRequestController>(builder: (voucherRequestController) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CommonText(
                  text: AppString.shopName
              ),
              12.height,
              CommonTextField(
                controller: voucherRequestController.shopNameController,
                hintText: AppString.enterYourShopName,
              ),
              16.height,

              CommonText(text: AppString.shopType),
              12.height,
              CommonTextField(
                controller: voucherRequestController.shopTypeController,
                keyboardType: TextInputType.none,
                hintText: AppString.enterYourShopType,
                suffixIcon: PopUpMenuItems(
                    items: voucherRequestController.shopTypes,
                    selectedItem: [
                      voucherRequestController.selectedShopType
                    ], onTap: voucherRequestController.selectShopType),
              ),

              16.height,

              CommonText(text: AppString.requestedDiscount),
              12.height,
              CommonTextField(
                controller: voucherRequestController.requestedDiscountController,
                hintText: AppString.enterYourRequestedDiscount,
              ),
              16.height,

              CommonText(text: AppString.numberOfVouchers),
              12.height,
              CommonTextField(
                controller: voucherRequestController.requestedNumberOfVouchers,
                hintText: AppString.enterRequestedNumberOfVoucher,
              ),
              16.height,

              CommonText(text: AppString.address),
              12.height,
              CommonTextField(
                controller: voucherRequestController.addressController,
                hintText: AppString.enterYourShopAddress,
              ),
              16.height,

              CommonText(text: AppString.validity),
              12.height,
              CommonTextField(
                controller: voucherRequestController.validityController,
                hintText: AppString.enterYourVoucherValidity,
              ),
              16.height,
              CommonText(text: AppString.productImage),
              12.height,
              UploadContainer(onTap: () {
                OtherHelper.openGallery();
              },
                uploadFile: null,
                uploadText: "",
                height: 80,
              ),
              56.height,

              CommonButton(
                  titleText: AppString.submit,
                onTap: () {
                  BottomNavbarController.instance.onItemTapped(0);
                  Get.to(() => BottomBarMarch());
                },
              )
            ],
          );
        },),
      ),
    );
  }
}
