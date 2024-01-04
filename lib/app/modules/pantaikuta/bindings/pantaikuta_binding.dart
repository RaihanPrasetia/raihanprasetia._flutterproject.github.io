import 'package:get/get.dart';

import '../controllers/pantaikuta_controller.dart';

class PantaikutaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PantaikutaController>(
      () => PantaikutaController(),
    );
  }
}
