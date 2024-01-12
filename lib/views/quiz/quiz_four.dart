import 'package:flutter/material.dart';
import 'package:hahu_hoheng_fitfun/themes/app_color.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';
import 'package:hahu_hoheng_fitfun/widgets/global/button_quiz.dart';

import '../../widgets/quiz/quiz_form_four.dart';

class QuizFourView extends StatelessWidget {
  const QuizFourView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            'Langkah 4/5',
            style: text11.copyWith(
                fontWeight: FontWeight.w500, color: secondaryColor),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            ' Apakah Anda makan secara teratur dan seimbang?',
            style: text16.copyWith(
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              'Kami memerlukan informasi tentang kondisi anda supaya membantu kami untuk menyarankan kegiatan yang cocok dengan anda',
              style: text11.copyWith(
                fontWeight: FontWeight.w500,
                color: textGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const QuizFormFour(),
          const SizedBox(
            height: 260,
          ),
          ButtonQuiz(
            onTap: () {},
          ),
          const SizedBox(
            height: 20,
          )
        ],
      )),
    );
  }
}
