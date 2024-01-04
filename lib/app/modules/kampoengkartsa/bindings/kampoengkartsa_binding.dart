import 'package:get/get.dart';

import '../controllers/kampoengkartsa_controller.dart';

class KampoengkartsaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KampoengkartsaController>(
      () => KampoengkartsaController(),
    );
  }
}
