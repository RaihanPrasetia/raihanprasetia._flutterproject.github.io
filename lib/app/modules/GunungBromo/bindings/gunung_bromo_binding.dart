import 'package:get/get.dart';

import '../controllers/gunung_bromo_controller.dart';

class GunungBromoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GunungBromoController>(
      () => GunungBromoController(),
    );
  }
}
