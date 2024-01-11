import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../controllers/view/quiz_controller.dart';
import '../../themes/app_font.dart';

class QuizForm extends StatefulWidget {
  const QuizForm({super.key});

  @override
  State<QuizForm> createState() => _QuizFormState();
}

class _QuizFormState extends State<QuizForm> {
  List? isChecked = [];
  @override
  void initState() {
    final controller = Get.find<QuizController>();
    isChecked =
        List.generate(controller.quizWithImage.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<QuizController>();
    return Column(
      children: controller.quizWithImage
          .asMap()
          .entries
          .map<Widget>(
            (entry) => Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: const Color(0xFFFFFFFF).withOpacity(0.9),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFD3D6DA),
                      blurRadius: 0.5,
                      offset: Offset(0.5, 0.5),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(entry.value),
                  Text(
                    controller
                        .quizName[entry.key], // Ambil nama dari list quizName
                    style: text14.copyWith(fontWeight: FontWeight.w700),
                  ),
                  Checkbox(
                    value: isChecked![entry.key],
                    tristate: false,
                    onChanged: (newBool) {
                      setState(() {
                        isChecked![entry.key] = newBool;
                      });
                      print('Tombol Check Ditekan');
                    },
                    activeColor: const Color(0xFF3CB371),
                    side: const BorderSide(
                      color: Color(0xFFD3D6DA),
                      width: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
