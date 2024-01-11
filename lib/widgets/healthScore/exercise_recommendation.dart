import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/controllers/heath_score_controller.dart';
import 'package:hahu_hoheng_fitfun/themes/app_color.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

class HealthScoreRecommendation extends StatelessWidget {
  const HealthScoreRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HealthScoreController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Rekomendasi Latihan",
          style: text20,
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: shadowColor,
                    offset: Offset(0, 0),
                    spreadRadius: 1,
                    blurRadius: 15)
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
                height: 100,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      "assets/images/exercise_recommendation.jpg",
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        bottom: 5,
                        left: 10,
                        child: Text(
                          "Kardio",
                          style: text20.copyWith(color: Colors.white),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Kardio sangat cocok untuk kondisi tubuh anda, dengan menerapkan pola makan yang sehat dan teratur. Kardio bermanfaat untuk menjaga stamina supaya dapat melakukan kegiatan fisik secara lebih baik."),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Berikut adalah contoh Kardio yang dapat anda lakukan:")
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                runAlignment: WrapAlignment.start,
                runSpacing: 10,
                alignment: WrapAlignment.start,
                spacing: 10,
                children: controller.kardioList
                    .map<Widget>((item) => Container(
                          margin: EdgeInsets.zero,
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 15),
                          decoration: BoxDecoration(
                              color: const Color(0xFFC4E8D5),
                              border:
                                  Border.all(width: 0.8, color: secondaryColor),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            item,
                            style: text12.copyWith(color: secondaryColor),
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
