import 'package:get/get.dart';

import '../controllers/raja_ampat_controller.dart';

class RajaAmpatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RajaAmpatController>(
      () => RajaAmpatController(),
    );
  }
}
