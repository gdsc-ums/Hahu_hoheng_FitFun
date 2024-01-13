import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/app_color.dart';
import '../../themes/app_font.dart';

class HomePrivateCoach extends StatelessWidget {
  const HomePrivateCoach({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Pelatih Pribadi",
              style: text20,
            ),
            Text(
              "Lebih banyak",
              style: text14.copyWith(color: secondaryColor),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: Get.width,
          height: 130,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 0.6, color: textGrey)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "assets/images/private_coach.jpg",
                  width: 100,
                  height: Get.height,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dapatkan Pelatih Pribadi!",
                      style: text18.copyWith(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Expanded(
                        child: Text(
                      "Cooming soon",
                    )),
                  ],
                ),
              ))
            ],
          ),
        ),
      ],
    );
  }
}
