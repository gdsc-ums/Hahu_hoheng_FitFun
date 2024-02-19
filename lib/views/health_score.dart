import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/themes/app_color.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';
import 'package:hahu_hoheng_fitfun/widgets/healthScore/exercise_recommendation.dart';
import 'package:hahu_hoheng_fitfun/widgets/healthScore/header_section.dart';

class HealthScoreView extends StatelessWidget {
  const HealthScoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          title: Text("Skor Kesehatan", style: text20),
          centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 15),
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Stack(
              children: [
                const SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      HealthScoreHeader(),
                      SizedBox(height: 20),
                      HealthScoreRecommendation(),
                      SizedBox(height: 100)
                    ],
                  ),
                ),
                Positioned(
                  bottom: 15,
                  child: SizedBox(
                    width: Get.width - 30,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: secondaryColor),
                      onPressed: () {},
                      child: Text("Mulai Latihan", style: buttonText),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
