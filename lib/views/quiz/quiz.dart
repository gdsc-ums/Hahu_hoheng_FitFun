import 'package:flutter/material.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

import '../../widgets/global/button_quiz.dart';
import '../../widgets/view/quiz_form.dart';

class QuizView extends StatefulWidget {
  const QuizView({super.key});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Langkah 1/7',
              style: text11.copyWith(color: const Color(0xFF3CB371)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Beri tahu kami bagaimana kami dapat membantu Anda',
              style: text16.copyWith(
                  color: const Color(0xFF363636), fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Anda dapat mengganti ini nanti',
              style: text11.copyWith(
                  color: const Color(0xFF363636), fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            const QuizForm(),
            const SizedBox(
              height: 150,
            ),
            const ButtonQuiz(),
          ],
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
//       activeColor: const Color(0xFF3CB371),
//       side: const BorderSide(
//         color: Color(0xFFD3D6DA),
//         width: 2.0,
//       ),
//     ),
