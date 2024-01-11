import 'package:flutter/material.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

class QuizViewTwo extends StatefulWidget {
  const QuizViewTwo({super.key});

  @override
  State<QuizViewTwo> createState() => _QuizViewTwoState();
}

class _QuizViewTwoState extends State<QuizViewTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Langkah 2/7',
              style: text11.copyWith(color: const Color(0xFF3CB371)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Data fisik Anda',
              style: text16.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Kami memerlukan informasi tentang kondisi anda supaya membantu kami untuk menyarankan kegiatan yang cocok dengan anda',
                style: text11.copyWith(fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
