import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/bindings/home_binding.dart';

import '../views/home.dart';
import 'route_name.dart';

class AppPage {
  static final pages = [
    GetPage(
        name: RouteName.home,
        page: () => const HomeView(),
        binding: HomeBinding()),
  ];
}
