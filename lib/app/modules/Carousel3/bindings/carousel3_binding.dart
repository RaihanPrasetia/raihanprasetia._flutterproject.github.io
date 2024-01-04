import 'package:get/get.dart';

import '../controllers/carousel3_controller.dart';

class Carousel3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Carousel3Controller>(
      () => Carousel3Controller(),
    );
  }
}
