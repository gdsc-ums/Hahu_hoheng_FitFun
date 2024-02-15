import 'package:flutter/material.dart';

import '../../themes/app_color.dart';
import '../../themes/app_font.dart';

class HomeExerciseProgram extends StatelessWidget {
  const HomeExerciseProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Program Latihan", style: text20),
            Text("Lebih banyak", style: text14.copyWith(color: secondaryColor))
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 150,
                clipBehavior: Clip.hardEdge,
                padding: const EdgeInsets.only(top: 20, left: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.5, color: textGrey),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kardio",
                        style: text22.copyWith(color: secondaryColor)),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Image.asset("assets/images/kardio.png",
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Container(
                height: 150,
                clipBehavior: Clip.hardEdge,
                padding: const EdgeInsets.only(top: 20, left: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 0.5, color: textGrey),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kaki", style: text22.copyWith(color: secondaryColor)),
                    Expanded(
                      child: Image.asset("assets/images/foot.png",
                          height: 700, fit: BoxFit.cover),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
