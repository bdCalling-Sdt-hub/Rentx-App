
import 'package:flutter/material.dart';
import 'package:rentx/utils/app_colors.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/text/common_text.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CommonText(text: "Support", fontWeight: FontWeight.w700, fontSize: 20,),
      ),

      body: Column(
        children: [
          CommonText(text: AppString.ifYouFaceAnyKind, maxLines: 3,),
          CustomRow(icon: Icons.phone_outlined, text: "01752121212")
        ],
      )
    );
  }

  CustomRow({required IconData icon, required String text}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: AppColors.s500,),
              CommonText(text: text)
            ],
          ),
    );
  }
}
