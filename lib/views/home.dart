import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/controllers/home_controller.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';
import 'package:hahu_hoheng_fitfun/widgets/global/bottom_navbar.dart';
import 'package:hahu_hoheng_fitfun/widgets/home/exercise_program.dart';
import 'package:hahu_hoheng_fitfun/widgets/home/header_section.dart';
import 'package:hahu_hoheng_fitfun/widgets/home/private_coach.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hai, Yona",
                              style: text30,
                            ),
                            const Text("Selamat datang di FitFun"),
                          ],
                        ),
                        GestureDetector(
                          onTap: () async => await controller.logout(),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: SvgPicture.asset(
                              "assets/icons/logout.svg",
                              height: 28,
                              width: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const HomeHeaderSection(),
                    const SizedBox(
                      height: 40,
                    ),
                    const HomeExerciseProgram(),
                    const SizedBox(
                      height: 40,
                    ),
                    const HomePrivateCoach(),
                    const SizedBox(
                      height: 100,
                    )
                  ],
                ),
              ),
            ),
            const BottomNavbar()
          ],
        ),
      ),
    );
  }
}
