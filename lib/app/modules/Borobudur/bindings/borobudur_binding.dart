import 'package:get/get.dart';

import '../controllers/borobudur_controller.dart';

class BorobudurBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BorobudurController>(
      () => BorobudurController(),
    );
  }
}
