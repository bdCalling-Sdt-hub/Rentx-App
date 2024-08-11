import 'package:get/get.dart';

import '../controllers/MerchantControllers/PaymentController/payment_controller.dart';
import '../controllers/common_controller/auth/change_password_controller.dart';
import '../controllers/common_controller/auth/forget_password_controller.dart';
import '../controllers/common_controller/auth/landlord_Info_controller.dart';
import '../controllers/common_controller/auth/sign_in_controller.dart';
import '../controllers/common_controller/auth/sign_up_controller.dart';
import '../controllers/common_controller/message/chat_controller.dart';
import '../controllers/common_controller/message/message_controller.dart';
import '../controllers/common_controller/notifications/notifications_controller.dart';
import '../controllers/common_controller/profile/profile_controller.dart';
import '../controllers/common_controller/setting/privacy_policy_controller.dart';
import '../controllers/common_controller/setting/setting_controller.dart';
import '../controllers/common_controller/setting/terms_of_services_controller.dart';
import '../controllers/user/history_controller.dart';
import '../controllers/user/home/home_controller.dart';
import '../controllers/user/my_residences_controller.dart';
import '../controllers/user/reward_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController(), fenix: true);
    Get.lazyPut(() => SignInController(), fenix: true);
    Get.lazyPut(() => ForgetPasswordController(), fenix: true);
    Get.lazyPut(() => ChangePasswordController(), fenix: true);
    Get.lazyPut(() => NotificationsController(), fenix: true);
    Get.lazyPut(() => ChatController(), fenix: true);
    Get.lazyPut(() => MessageController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => SettingController(), fenix: true);
    Get.lazyPut(() => PrivacyPolicyController(), fenix: true);
    Get.lazyPut(() => TermsOfServicesController(), fenix: true);
    Get.lazyPut(() => LandlordInfoController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => PaymentController(), fenix: true);
    Get.lazyPut(() => RewardController(), fenix: true);
    Get.lazyPut(() => HistoryController(), fenix: true);
    Get.lazyPut(() => MyResidencesController(), fenix: true);
  }
}
