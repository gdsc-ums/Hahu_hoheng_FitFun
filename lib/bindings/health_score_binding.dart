import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/controllers/heath_score_controller.dart';

class HealthScoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HealthScoreController>(() => HealthScoreController());
  }
}
