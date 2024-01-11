import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/routes/route_name.dart';

import '../../themes/app_color.dart';

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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lanjut",
                style: TextStyle(color: secondaryColor),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: secondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
