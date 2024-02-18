import 'package:flutter/material.dart';
import 'package:hahu_hoheng_fitfun/themes/app_color.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

import '../../widgets/global/button_quiz.dart';
import '../../widgets/quiz/quiz_form_five.dart';

class QuizFiveView extends StatelessWidget {
  const QuizFiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Text('Langkah 5/5',
                style: text11.copyWith(
                    color: secondaryColor, fontWeight: FontWeight.w500)),
            const SizedBox(height: 20),
            Text('Seberapa sering anda beraktifitas fisik dalam seminggu?',
                style: text24, textAlign: TextAlign.center),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Text(
                  'Kami memerlukan informasi tentang kondisi anda supaya membantu kami untuk menyarankan kegiatan yang cocok dengan anda',
                  style: text11.copyWith(
                      color: textGrey, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center),
            ),
            const SizedBox(height: 20),
            const QuizFormFive(),
            const SizedBox(height: 150),
            ButtonQuiz(onTap: () {}, buttonTextPages: 'Lanjut'),
          ],
        ),
      ),
    );
  }
}
