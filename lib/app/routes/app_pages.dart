import 'package:get/get.dart';

import '../modules/expeditions/bindings/expeditions_binding.dart';
import '../modules/expeditions/views/expeditions_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.EXPEDITIONS,
      page: () => const ExpeditionsView(),
      binding: ExpeditionsBinding(),
    ),
  ];
}
