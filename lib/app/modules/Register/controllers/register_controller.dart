import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  void onPraseedIconLogin() {
    Get.offAllNamed(Routes.LOGIN);
  }
}
