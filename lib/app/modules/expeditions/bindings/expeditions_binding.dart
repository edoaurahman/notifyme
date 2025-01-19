import 'package:get/get.dart';
import 'package:notifyme/app/modules/expeditions/providers/expedition_provider.dart';

import '../controllers/expeditions_controller.dart';

class ExpeditionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpeditionsController>(
      () => ExpeditionsController(),
    );
    Get.lazyPut<ExpeditionProvider>(
      () => ExpeditionProvider(),
    );
  }
}
