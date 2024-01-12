import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/quiz_controller.dart';
import '../../themes/app_font.dart';

class QuizFormFour extends StatelessWidget {
  const QuizFormFour({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<QuizController>();
    return Form(
      child: Column(
        children: controller.quizEating
            .asMap()
            .entries
            .map<Widget>(
              (eatValue) => GetBuilder<QuizController>(
                builder: (_) => Container(
                  width: Get.width,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFFFFFFF).withOpacity(0.9),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFD3D6DA),
                          blurRadius: 5,
                          offset: Offset(0.5, 0.5),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        controller.quizEating[eatValue.key],
                        style: text14.copyWith(fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      GetBuilder<QuizController>(
                        builder: (_) => Checkbox(
                          value: controller.isChecked![eatValue.key],
                          tristate: false,
                          onChanged: (newBool) {
                            controller.isVisible.value
                                ? controller.isChecked![eatValue.key] = false
                                : controller.isChecked![eatValue.key] = newBool;
                            controller.update();
                            print('Tombol Check Ditekan');
                          },
                          activeColor: const Color(0xFF3CB371),
                          side: const BorderSide(
                            color: Color(0xFFD3D6DA),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
