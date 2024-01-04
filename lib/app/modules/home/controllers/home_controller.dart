import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeController extends GetxController {
  var textStyle = GoogleFonts.roboto().obs;
  void onPraseedButtonLogin() {
    Get.toNamed(Routes.LOGIN);
  }

  void onPraseedButtonRegister() {
    Get.toNamed(Routes.REGISTER);
  }

  void onPraseedIconCaroulsel2() {
    Get.offAndToNamed(Routes.CAROUSEL2);
  }
}
