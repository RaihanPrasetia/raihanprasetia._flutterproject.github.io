import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

class Carousel2Controller extends GetxController {
  void onPraseedIconCaroulsel3() {
    Get.offAndToNamed(Routes.CAROUSEL3);
  }

  void onPreseedIconHome() {
    Get.offAndToNamed(Routes.HOME);
  }
}
