import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/app_color.dart';
import '../../themes/app_font.dart';

class QuizSixContain extends StatelessWidget {
  const QuizSixContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      width: Get.width / 1.1,
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.only(top: 20, left: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.5, color: textGrey),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFD3D6DA),
              blurRadius: 10,
              offset: Offset(1.5, 0.5),
            )
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kardio",
                  style: text22.copyWith(color: secondaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Olahraga kardio dapat membantu membangun otot yang lebih kuat, termasuk otot jantung.',
                  style: text12.copyWith(color: textGrey),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Image.asset(
                "assets/images/kardio.png",
                height: 200,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
