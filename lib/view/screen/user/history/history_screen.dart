import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/controllers/user/history_controller.dart';
import 'package:rentx/utils/app_string.dart';
import 'package:rentx/view/component/bottom_nav_bar/common_bottom_bar.dart';
import 'package:rentx/view/component/text/common_text.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CommonText(
          text: AppString.history,
          fontSize: 24,
        ),
      ),
      body: GetBuilder<HistoryController>(
        builder: (controller) => const SingleChildScrollView(
          child: Column(),
        ),
      ),
      bottomNavigationBar: const CommonBottomNavBar(currentIndex: 3),
    );
  }
}
