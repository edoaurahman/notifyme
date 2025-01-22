import 'package:get/get.dart';

import '../controllers/expeditions_controller.dart';

class ExpeditionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpeditionsController>(
      () => ExpeditionsController(),
    );
  }
}
