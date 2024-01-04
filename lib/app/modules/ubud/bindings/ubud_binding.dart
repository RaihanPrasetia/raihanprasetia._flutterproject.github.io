import 'package:get/get.dart';

import '../controllers/ubud_controller.dart';

class UbudBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UbudController>(
      () => UbudController(),
    );
  }
}
