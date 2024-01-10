import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/bindings/home_binding.dart';
import 'package:hahu_hoheng_fitfun/bindings/splash_binding.dart';

import '../views/home.dart';
import '../views/splash.dart';
import 'route_name.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: RouteName.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
