import 'package:get/get.dart';
import 'package:rentx/view/screen/Marchant_screens/History/History_screen_march.dart';
import 'package:rentx/view/screen/Marchant_screens/Home/home_screen_march.dart';
import 'package:rentx/view/screen/Marchant_screens/Profile/profile_screen_march.dart';
import 'package:rentx/view/screen/common_screen/auth/sign%20up/complete_profile.dart';
import 'package:rentx/view/screen/common_screen/auth/sign%20up/landlord_infomation_screen.dart';
import 'package:rentx/view/screen/common_screen/setting/about_us.dart';
import 'package:rentx/view/screen/common_screen/setting/support_screen.dart';
import 'package:rentx/view/screen/selection_role_screen.dart';
import 'package:rentx/view/screen/user/PayRent/pay_rent_additional_screen.dart';
import 'package:rentx/view/screen/user/PayRent/pay_rent_screen.dart';
import 'package:rentx/view/screen/user/history/history_screen.dart';
import 'package:rentx/view/screen/user/my_residences/my_residences_screen.dart';
import 'package:rentx/view/screen/user/reward/reward_screen.dart';

import '../view/component/bottom_nav_bar/common_bottom_bar.dart';
import '../view/screen/Marchant_screens/BoostPackageScreens/boost_package_screen.dart';
import '../view/screen/Marchant_screens/BoostPackageScreens/boosted_package_screen.dart';
import '../view/screen/Marchant_screens/BoostPackageScreens/buy_package_screen.dart';
import '../view/screen/Marchant_screens/BoostPackageScreens/payment_screen.dart';
import '../view/screen/Marchant_screens/BoostPackageScreens/payment_successful_screen.dart';
import '../view/screen/Marchant_screens/CompleteProfile/complete_profile_merch.dart';
import '../view/screen/Marchant_screens/ScanQR/qr_code_number.dart';
import '../view/screen/Marchant_screens/ScanQR/scan_qr_screen.dart';
import '../view/screen/Marchant_screens/VoucherRequest/voucher_request_screen.dart';
import '../view/screen/common_screen/CouponDetails/coupon_details_screen.dart';
import '../view/screen/common_screen/CouponDetails/coupon_redeem_screen.dart';
import '../view/screen/common_screen/MyCoupons/my_coupons.dart';
import '../view/screen/common_screen/auth/change_password/change_password_screen.dart';
import '../view/screen/common_screen/auth/forgot password/create_password.dart';
import '../view/screen/common_screen/auth/forgot password/forgot_password.dart';
import '../view/screen/common_screen/auth/forgot password/verify_screen.dart';
import '../view/screen/common_screen/auth/sign in/sign_in_screen.dart';
import '../view/screen/common_screen/auth/sign up/sign_up_screen.dart';
import '../view/screen/common_screen/auth/sign up/verify_user.dart';
import '../view/screen/common_screen/message/message_screen.dart';
import '../view/screen/common_screen/notifications/notifications_screen.dart';
import '../view/screen/common_screen/onboarding_screen/onboarding_screen.dart';
import '../view/screen/common_screen/profile/edit_profile.dart';
import '../view/screen/common_screen/profile/profile_screen.dart';
import '../view/screen/common_screen/setting/privacy_policy_screen.dart';
import '../view/screen/common_screen/setting/setting_screen.dart';
import '../view/screen/common_screen/setting/terms_of_services_screen.dart';
import '../view/screen/common_screen/splash/splash_screen.dart';
import '../view/screen/test_screen.dart';
import '../view/screen/user/home/home_screen.dart';
import '../view/screen/user/my_residences/my_residence_list_screen.dart';

class AppRoutes {
  static const String test = "/test_screen.dart";
  static const String splash = "/splash_screen.dart";
  static const String selectionRole = "/selection_role_screen.dart";
  static const String onboarding = "/onboarding_screen.dart";
  static const String signUp = "/sign_up_screen.dart";
  static const String verifyUser = "/verify_user.dart";
  static const String signIn = "/sign_in_screen.dart";
  static const String forgotPassword = "/forgot_password.dart";
  static const String verifyEmail = "/verify_screen.dart";
  static const String createPassword = "/create_password.dart";
  static const String changePassword = "/change_password_screen.dart";
  static const String notifications = "/notifications_screen.dart";
  static const String message = "/message_screen.dart";
  static const String profile = "/profile_screen.dart";
  static const String editProfile = "/edit_profile.dart";
  static const String privacyPolicy = "/privacy_policy_screen.dart";
  static const String termsOfServices = "/terms_of_services_screen.dart";
  static const String setting = "/setting_screen.dart";
  static const String completeProfile = "/complete_profile.dart";
  static const String landlordInformation = "/landlord_infomation_screen.dart";

  ///<<<=================== Merchant Screens ====================>>>
  static const String historyScreenMarch = "/History_screen_march.dart";
  static const String scanQrScreen = "/scan_qr_screen.dart";
  static const String profileScreenMarch = "/profile_screen_march.dart";
  static const String homeScreenMarch = "/home_screen_march.dart";
  static const String couponDetailsScreen = "/coupon_details_screen.dart";
  static const String completeProfileMerch = "/complete_profile_merch.dart";
  static const String boostPackageScreen = "/boost_package_screen.dart";
  static const String buyPackageScreen = "/buy_package_screen.dart";
  static const String paymentScreen = "/payment_screen.dart";
  static const String paymentSuccessfulScreen =
      "/payment_successful_screen.dart";
  static const String boostedPackageScreen = "/boosted_package_screen.dart";
  static const String myCoupons = "/my_coupons.dart";
  static const String supportScreen = "/support_screen.dart";
  static const String qrCodeNumber = "/qr_code_number.dart";
  static const String voucherRequestScreen = "/voucher_request_screen.dart";

  ///======================= User Screen =================

  static const String reward = "/reward_screen.dart";
  static const String home = "/home_screen.dart";
  static const String aboutUs = "/about_us.dart";
  static const String history = "/history_screen.dart";
  static const String myResidences = "/my_residences_screen.dart";
  static const String payRentScreen = "/pay_rent_screen.dart";
  static const String myResidenceListScreen = "/my_residence_list_screen.dart";
  static const String commonBottomBar = "/common_bottom_bar.dart";
  static const String couponRedeemScreen = "/coupon_redeem_screen.dart";
  static const String payRentAdditionalScreen = "/pay_rent_additional_screen.dart";

  static List<GetPage> routes = [
    ///<<<================ Merchant Screens=============>>>
    GetPage(
      name: homeScreenMarch,
      page: () => HomeScreenMarch(),
    ),
    GetPage(
      name: historyScreenMarch,
      page: () => HistoryScreenMarch(),
    ),
    GetPage(
      name: scanQrScreen,
      page: () => ScanQrScreen(),
    ),
    GetPage(
      name: profileScreenMarch,
      page: () => ProfileScreenMarch(),
    ),
    GetPage(
        name: couponDetailsScreen,
        page: () => CouponDetailsScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: completeProfileMerch,
        page: () => CompleteProfileMerch(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: boostPackageScreen,
        page: () => BoostPackageScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: buyPackageScreen,
        page: () => BuyPackageScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: paymentScreen,
        page: () => PaymentScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: paymentSuccessfulScreen,
        page: () => PaymentSuccessfulScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: boostedPackageScreen,
        page: () => BoostedPackageScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: myCoupons,
        page: () => MyCoupons(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: supportScreen,
        page: () => SupportScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: qrCodeNumber,
        page: () => QrCodeNumber(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: voucherRequestScreen,
        page: () => VoucherRequestScreen(),
        transition: Transition.rightToLeftWithFade),


    GetPage(
      name: test,
      page: () => TestScreen(),
    ),
    GetPage(
        name: splash,
        page: () => SplashScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: selectionRole,
        page: () => SelectionRole(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: signUp,
        page: () => SignUpScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: verifyUser,
        page: () => VerifyUser(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: signIn,
        page: () => SignInScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: forgotPassword,
        page: () => ForgotPasswordScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: verifyEmail,
        page: () => VerifyScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: createPassword,
        page: () => CreatePassword(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: changePassword,
        page: () => ChangePasswordScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: notifications,
        page: () => NotificationScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: message,
        page: () => MessageScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: profile,
        page: () => ProfileScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: editProfile,
        page: () => EditProfile(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: privacyPolicy,
        page: () => PrivacyPolicyScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: termsOfServices,
        page: () => TermsOfServicesScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: setting,
        page: () => SettingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: onboarding,
        page: () => OnboardingScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: completeProfile,
        page: () => CompleteProfile(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: landlordInformation,
        page: () => LandlordInformationScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: home,
        page: () => HomeScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: aboutUs,
        page: () => AboutUs(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: reward,
        page: () => RewardScreen(),
        transition: Transition.upToDown),

    GetPage(
        name: history,
        page: () => HistoryScreen(),
        transition: Transition.upToDown),
    GetPage(
        name: myResidences,
        page: () => const MyResidencesScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: payRentScreen,
        page: () => PayRentScreen(),
        transition: Transition.upToDown),
    GetPage(
        name: myResidenceListScreen,
        page: () => MyResidenceListScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: commonBottomBar,
        page: () => CommonBottomNavBar(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: couponRedeemScreen,
        page: () => CouponRedeemScreen(),
        transition: Transition.rightToLeftWithFade),
    GetPage(
        name: payRentAdditionalScreen,
        page: () => PayRentAdditionalScreen(),
        transition: Transition.leftToRightWithFade),
  ];
}
