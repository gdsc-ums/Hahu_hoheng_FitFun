import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/themes/app_color.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

import '../../routes/route_name.dart';
import '../../widgets/global/button_quiz.dart';
import '../../widgets/quiz/quiz_form.dart';

class QuizView extends StatelessWidget {
  const QuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(
                'Langkah 1/5',
                style: text12.copyWith(color: secondaryColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Beri tahu kami bagaimana kami dapat membantu Anda',
                style: text16.copyWith(
                    color: const Color(0xFF363636),
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Anda dapat mengganti ini nanti',
                style: text11.copyWith(
                    color: textGrey, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const QuizForm(),
              const SizedBox(
                height: 150,
              ),
              ButtonQuiz(
                onTap: () {
                  Get.toNamed(RouteName.quizTwo);
                },
                buttonTextPages: 'Lanjut',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  controller.quizWithImage
//                         .map<Widget>((images) => SvgPicture.asset(
//                               images,
//                             ))
//                         .toList(),

// Checkbox(
//       value: isChecked,
//       tristate: false,
//       onChanged: (newBool) {
//         setState(() {
//           isChecked = newBool;
//         });
//         print('Tombol Check Ditekan');
//       },
//       activeColor: secondaryColor,
//       side: const BorderSide(
//         color: Color(0xFFD3D6DA),
//         width: 2.0,
//       ),
//     ),
