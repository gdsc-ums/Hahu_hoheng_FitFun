import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/app_color.dart';
import '../../themes/app_font.dart';

class ButtonQuiz extends StatelessWidget {
  final String buttonTextPages;
  final Function()? onTap;
  const ButtonQuiz({super.key, this.onTap, required this.buttonTextPages});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: Get.width,
        child: ElevatedButton(
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                buttonTextPages,
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
