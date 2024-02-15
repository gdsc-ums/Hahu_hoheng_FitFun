import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../bloc/quiz_controller.dart';
import '../../themes/app_color.dart';
import '../../themes/app_font.dart';

class QuizFormThree extends StatelessWidget {
  const QuizFormThree({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<QuizController>();
    return Form(
      child: Column(
        children: [
          GetBuilder<QuizController>(
            builder: (_) => GestureDetector(
              onTap: () {
                controller.selectedOption = 'Ya';
                controller.update();
                print(controller.selectedOption);
              },
              child: Container(
                width: Get.width,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: controller.selectedOption == 'Ya'
                        ? secondaryColor // Ubah warna teks yang sesuai ketika dipilih
                        : const Color(0xFFFFFFFF).withOpacity(0.9),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFFD3D6DA),
                        blurRadius: 5,
                        offset: Offset(0.5, 0.5),
                      )
                    ]),
                child: Text(
                  'Ya',
                  style: text14.copyWith(fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GetBuilder<QuizController>(
            builder: (_) => GestureDetector(
              onTap: () {
                controller.selectedOption = 'Tidak';
                controller.update();
                print(controller.selectedOption);
              },
              child: Container(
                width: Get.width,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: controller.selectedOption == 'Tidak'
                        ? secondaryColor // Ubah warna teks yang sesuai ketika dipilih
                        : const Color(0xFFFFFFFF).withOpacity(0.9),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xFFD3D6DA),
                        blurRadius: 5,
                        offset: Offset(0.5, 0.5),
                      )
                    ]),
                child: Text(
                  'Tidak',
                  style: text14.copyWith(fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
