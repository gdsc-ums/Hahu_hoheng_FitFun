import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/themes/app_color.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 140,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 0.6, color: secondaryColor)),
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
                  "Skor kesehatan",
                  style: text18.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Text(
                  "Berdasarkan kuis kesehatan Anda secara keseluruhan, skor anda 80 dan dinyatakan cukup baik.",
                  maxLines: 3,
                  style: text12,
                  overflow: TextOverflow.ellipsis,
                )),
                Text(
                  "Lebih banyak",
                  style: text12.copyWith(color: secondaryColor),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
