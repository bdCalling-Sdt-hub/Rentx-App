
import 'package:flutter/material.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/Marchant_screens/Components/bottom_bar_march.dart';

class HomeScreenMarch extends StatelessWidget {
  const HomeScreenMarch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarMarch(currentIndex: 0),
      appBar: AppBar(
          title: CommonText(text: "Home Screen Merchant"),
      ),
    );
  }
}
