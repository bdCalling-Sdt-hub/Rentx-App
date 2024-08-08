import 'package:flutter/material.dart';
import 'package:rentx/view/component/text/common_text.dart';
import 'package:rentx/view/screen/Marchant_screens/Components/bottom_bar_march.dart';

class ProfileScreenMarch extends StatelessWidget {
  const ProfileScreenMarch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarMarch(currentIndex: 3),
      appBar: AppBar(
        centerTitle: true,
        title: CommonText(text: "Profile"),
      ),
    );
  }
}
