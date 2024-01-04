import 'package:get/get.dart';

import '../controllers/natsepa_controller.dart';

class NatsepaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NatsepaController>(
      () => NatsepaController(),
    );
  }
}
