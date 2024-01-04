import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

class Carousel3Controller extends GetxController {
  void onPraseedButtonLogin() {
    Get.toNamed(Routes.LOGIN);
  }

  void onPraseedButtonRegister() {
    Get.toNamed(Routes.REGISTER);
  }

  void onPraseedIconCaroulsel2() {
    Get.offAndToNamed(Routes.CAROUSEL2);
  }

  void onPreseedIconHome() {
    Get.offAndToNamed(Routes.HOME);
  }
}
