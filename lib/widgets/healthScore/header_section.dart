import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../themes/app_color.dart';
import '../../themes/app_font.dart';

class HealthScoreHeader extends StatelessWidget {
  const HealthScoreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 0.6, color: secondaryColor)),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/hexagon_shape.svg",
                    height: 65,
                    width: 65,
                  ),
                  Text(
                    "80",
                    style: text25.copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cukup baik",
                    style: text14.copyWith(
                        fontWeight: FontWeight.w600, color: secondaryColor),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    width: Get.width,
                    color: shadowColor,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: Text(
                    "Berdasarkan kuis kesehatan Anda secara keseluruhan, skor anda 80 dan dinyatakan cukup baik.",
                    style: text12,
                    overflow: TextOverflow.visible,
                  )),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
