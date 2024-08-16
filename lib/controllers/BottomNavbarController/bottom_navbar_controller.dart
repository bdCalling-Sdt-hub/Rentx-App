
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentx/view/screen/Marchant_screens/History/History_screen_march.dart';
import 'package:rentx/view/screen/Marchant_screens/Home/home_screen_march.dart';
import 'package:rentx/view/screen/Marchant_screens/Profile/profile_screen_march.dart';
import 'package:rentx/view/screen/Marchant_screens/ScanQR/scan_qr_screen.dart';
import 'package:rentx/view/screen/common_screen/profile/profile_screen.dart';
import 'package:rentx/view/screen/user/PayRent/pay_rent_screen.dart';
import 'package:rentx/view/screen/user/history/history_screen.dart';
import 'package:rentx/view/screen/user/home/home_screen.dart';
import 'package:rentx/view/screen/user/reward/reward_screen.dart';

class BottomNavbarController extends GetxController{

  var selectedIndex = 0.obs;

  static BottomNavbarController get instance => Get.put(BottomNavbarController());

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> merchantAllScreens = <Widget>[
    HomeScreenMarch(),
    HistoryScreenMarch(),
    ScanQrScreen(),
    ProfileScreenMarch()
  ];

  final List<Widget> userAllScreens = <Widget>[
    HomeScreen(),
    RewardScreen(),
    PayRentScreen(),
    HistoryScreen(),
    ProfileScreen()
  ];
}