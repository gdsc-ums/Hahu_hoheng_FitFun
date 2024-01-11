import 'package:get/get.dart';

import '../../controllers/view/quiz_two_controller.dart';

class QuizTwoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuizTwoController>(() => QuizTwoController());
  }
}
