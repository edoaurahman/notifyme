import 'package:get/get.dart';
import 'package:notifyme/app/modules/home/providers/resi_provider.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ResiProvider>(
      () => ResiProvider(),
    );
  }
}
