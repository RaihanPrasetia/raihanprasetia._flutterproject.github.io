import 'package:get/get.dart';

import '../controllers/populer_controller.dart';

class PopulerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PopulerController>(
      () => PopulerController(),
    );
  }
}
