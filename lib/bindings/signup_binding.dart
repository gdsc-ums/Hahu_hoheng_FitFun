import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/controllers/signup_controller.dart';

class SignupBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(() => SignupController());
  }
}
