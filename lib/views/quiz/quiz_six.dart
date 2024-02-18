import 'package:flutter/material.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

import '../../widgets/global/button_quiz.dart';
import '../../widgets/quiz/quiz_six_contain.dart';
import '../../widgets/quiz/quiz_six_header.dart';

class QuizSixView extends StatelessWidget {
  const QuizSixView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const QuizSixHeader(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Berikut adalah kegiatan yang direkomendasikan untuk kondisi anda',
                  style: text14.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 20),
              const QuizSixContain(),
              const SizedBox(height: 100),
              ButtonQuiz(onTap: () {}, buttonTextPages: 'Mulai'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
