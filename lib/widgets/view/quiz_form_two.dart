import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/view/quiz_controller.dart';
import '../../themes/app_color.dart';
import '../../themes/app_font.dart';

class QuizFormTwo extends StatelessWidget {
  const QuizFormTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<QuizController>();
    return Form(
      child: Column(
        children: [
          GetBuilder<QuizController>(
            builder: (_) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFFFFFFF).withOpacity(0.9),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFD3D6DA),
                      blurRadius: 0.5,
                      offset: Offset(0.5, 0.5),
                    )
                  ]),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Tinggi Badan (cm)",
                  // border: const OutlineInputBorder(),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'cm',
                      style: text14.copyWith(color: secondaryColor),
                    ),
                  ),
                ),
                style: text14.copyWith(
                    fontWeight: FontWeight.w400, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GetBuilder<QuizController>(
            builder: (_) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFFFFFFF).withOpacity(0.9),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFD3D6DA),
                      blurRadius: 0.5,
                      offset: Offset(0.5, 0.5),
                    )
                  ]),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Berat Badan (kg)",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'kg',
                      style: text14.copyWith(color: secondaryColor),
                    ),
                  ),
                ),
                style: text14.copyWith(
                    fontWeight: FontWeight.w400, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GetBuilder<QuizController>(
            builder: (_) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFFFFFFF).withOpacity(0.9),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFD3D6DA),
                      blurRadius: 0.5,
                      offset: Offset(0.5, 0.5),
                    )
                  ]),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Gender",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: DropdownButton(
                      padding: const EdgeInsets.only(right: 10),
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: secondaryColor,
                      ),
                      iconSize: 20,
                      elevation: 4,
                      // style: subTitleStyle,
                      underline: Container(
                        height: 0,
                      ),
                      onChanged: (String? newValue) {
                        // setState(() {
                        //   _selectedRepeat = newValue!;
                        // });
                        controller.update();
                      },
                      items: controller.quizGender
                          .map<DropdownMenuItem<String>>((String? value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value!,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
