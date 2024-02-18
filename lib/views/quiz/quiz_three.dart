import 'package:flutter/material.dart';
import 'package:hahu_hoheng_fitfun/themes/app_color.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';
import 'package:hahu_hoheng_fitfun/widgets/global/button_quiz.dart';
import 'package:hahu_hoheng_fitfun/widgets/quiz/quiz_form_three.dart';

class QuizThreeView extends StatelessWidget {
  const QuizThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 15),
          Text('Langkah 3/5',
              style: text12.copyWith(color: const Color(0xFF3CB371))),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text('Apakah anda memiliki riwayat penyakit jantung?',
                style: text16.copyWith(fontWeight: FontWeight.w700),
                textAlign: TextAlign.center),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Text(
                'Kami memerlukan informasi tentang kondisi anda supaya membantu kami untuk menyarankan kegiatan yang cocok dengan anda',
                style: text11.copyWith(
                    fontWeight: FontWeight.w500, color: textGrey),
                textAlign: TextAlign.center),
          ),
          const SizedBox(height: 20),
          const QuizFormThree(),
          const SizedBox(height: 300),
          ButtonQuiz(onTap: () {}, buttonTextPages: 'Lanjut'),
          const SizedBox(height: 20),
        ],
      )),
    );
  }
}
