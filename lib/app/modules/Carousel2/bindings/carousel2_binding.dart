import 'package:get/get.dart';

import '../controllers/carousel2_controller.dart';

class Carousel2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Carousel2Controller>(
      () => Carousel2Controller(),
    );
  }
}
