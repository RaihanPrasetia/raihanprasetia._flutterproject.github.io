// ignore_for_file: deprecated_member_use, non_constant_identifier_names

import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

class PantaikutaController extends GetxController {
  void OnPressedButtonBookmark() {
    Get.offAllNamed(Routes.BOOKMARK);
  }

  void OnPressedButtonProfil() {
    Get.offAllNamed(Routes.PROFILE);
  }

  void OnPressedButtontrips() {
    Get.offAllNamed(Routes.TRIPS);
  }

  void OnPressedButtonPopuler() {
    Get.toNamed(Routes.POPULER);
  }
}
