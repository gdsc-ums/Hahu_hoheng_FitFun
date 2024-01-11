import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/routes/route_name.dart';

import '../../themes/app_color.dart';
import '../../themes/app_font.dart';

class ButtonQuiz extends StatelessWidget {
  const ButtonQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: Get.width,
        child: ElevatedButton(
          onPressed: () {
            print("Tombol Next Berjalan");
            Get.toNamed(RouteName.quizTwo);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lanjut",
                style: buttonText,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: bgAppColor,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
