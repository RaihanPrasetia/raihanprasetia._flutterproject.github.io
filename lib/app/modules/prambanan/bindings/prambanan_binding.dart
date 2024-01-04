import 'package:get/get.dart';

import '../controllers/prambanan_controller.dart';

class PrambananBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrambananController>(
      () => PrambananController(),
    );
  }
}
