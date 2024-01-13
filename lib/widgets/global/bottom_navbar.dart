import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/controllers/home_controller.dart';
import 'package:hahu_hoheng_fitfun/themes/app_color.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Positioned(
      bottom: 0,
      child: Container(
        height: 65,
        width: Get.width,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: shadowColor, spreadRadius: 5, blurRadius: 10)
        ]),
        child: Row(
            children: List.generate(
                controller.tabs.length,
                (index) => SizedBox(
                      width: Get.width / 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            controller.tabs[index]["icon"],
                            height: 25,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            controller.tabs[index]["name"],
                            style: text10.copyWith(
                                color:
                                    index == 0 ? secondaryColor : Colors.grey),
                          )
                        ],
                      ),
                    ))),
      ),
    );
  }
}
