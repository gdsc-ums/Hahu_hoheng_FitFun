import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/bindings/home_binding.dart';
import 'package:hahu_hoheng_fitfun/bindings/login_binding.dart';
import 'package:hahu_hoheng_fitfun/views/login.dart';

import '../views/home.dart';
import 'route_name.dart';

class AppPage {
  static final pages = [
    GetPage(
      name: RouteName.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
