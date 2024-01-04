// ignore_for_file: non_constant_identifier_names

// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

// ignore: duplicate_ignore
class BrandaController extends GetxController {
  void OnPressedButtonBorobudur() {
    Get.toNamed(Routes.BOROBUDUR);
  }

  void OnPressedButtonBromo() {
    Get.toNamed(Routes.GUNUNG_BROMO);
  }

  void OnPressedButtonRajaAmpat() {
    Get.toNamed(Routes.RAJA_AMPAT);
  }

  void OnPressedButtonPantaiKuta() {
    Get.toNamed(Routes.PANTAIKUTA);
  }

  void OnPressedButtonBookmark() {
    Get.offAllNamed(Routes.BOOKMARK);
  }

  void OnPressedButtonProfil() {
    Get.offAllNamed(Routes.PROFILE);
  }

  void OnPressedButtontrips() {
    Get.offAllNamed(Routes.TRIPS);
  }
}
