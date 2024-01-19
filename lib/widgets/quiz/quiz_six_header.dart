import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../themes/app_color.dart';
import '../../themes/app_font.dart';

class QuizSixHeader extends StatelessWidget {
  const QuizSixHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(237, 237, 114, 0.8),
            Color.fromRGBO(218, 218, 115, 0.8),
            Colors.transparent,
          ],
          stops: [0, 0.14, 1], // Stop gradien sesuai persentase
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Selamat anda telah siap memulai kegiatan',
            style: text28,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                "assets/svg/hexagon_shape.svg",
                height: 100,
                width: 100,
              ),
              Text(
                "80",
                style: text25.copyWith(color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Cukup Baik',
            style: text22.copyWith(color: secondaryColor),
          ),
        ],
      ),
    );
  }
}
