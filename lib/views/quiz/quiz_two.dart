import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/themes/app_color.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

import '../../routes/route_name.dart';
import '../../widgets/global/button_quiz.dart';
import '../../widgets/quiz/quiz_form_two.dart';

class QuizViewTwo extends StatelessWidget {
  const QuizViewTwo({super.key});

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
                'Langkah 2/7',
                style: text12.copyWith(color: const Color(0xFF3CB371)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Data fisik Anda',
                style: text18.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
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
              const QuizFormTwo(),
              const SizedBox(
                height: 220,
              ),
              ButtonQuiz(
                onTap: () {
                  Get.toNamed(RouteName.quizThree);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
