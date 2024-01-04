// ignore_for_file: non_constant_identifier_names

import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

class TripsController extends GetxController {
  Rx<DateTime?> startDate = Rx<DateTime?>(null);
  Rx<DateTime?> endDate = Rx<DateTime?>(null);

  void OnPressedButtonHome() {
    Get.offAllNamed(Routes.BRANDA);
  }

  void OnPressedButtonBookmark() {
    Get.offAllNamed(Routes.BOOKMARK);
  }

  void OnPressedButtonProfil() {
    Get.offAllNamed(Routes.PROFILE);
  }
}
