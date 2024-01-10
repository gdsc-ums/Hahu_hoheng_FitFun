import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/controllers/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
