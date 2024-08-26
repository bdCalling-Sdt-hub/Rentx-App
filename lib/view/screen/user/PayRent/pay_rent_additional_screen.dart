
import 'package:flutter/material.dart';
import 'package:rentx/view/component/text/common_text.dart';

class PayRentAdditionalScreen extends StatelessWidget {
  const PayRentAdditionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CommonText(
            text: "Pay Rent",
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CommonText(text: "Under Development", fontWeight: FontWeight.w600, fontSize: 26,),
            CommonText(text: "This page will be appeared after getting UCB payment method", maxLines: 5,),
          ],
        ),
      ),
    );
  }
}
