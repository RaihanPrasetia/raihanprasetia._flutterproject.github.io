// ignore_for_file: non_constant_identifier_names

import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var showGallery = false.obs;

  void OnPressedButtontrips() {
    Get.offAllNamed(Routes.TRIPS);
  }

  void OnPressedButtonHome() {
    Get.offAllNamed(Routes.BRANDA);
  }

  void OnPressedButtonBookmark() {
    Get.offAllNamed(Routes.BOOKMARK);
  }
}
