// ignore_for_file: non_constant_identifier_names

import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

class BookmarkController extends GetxController {
  void OnPressedButtonHome() {
    Get.offAllNamed(Routes.BRANDA);
  }

  void OnPressedButtontrips() {
    Get.offAllNamed(Routes.TRIPS);
  }

  void OnPressedButtonProfil() {
    Get.offAllNamed(Routes.PROFILE);
  }
}
