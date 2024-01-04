import 'package:get/get.dart';

import '../controllers/branda_controller.dart';

class BrandaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BrandaController>(
      () => BrandaController(),
    );
  }
}
