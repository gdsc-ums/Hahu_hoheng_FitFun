import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/logo/logo_produk.svg',
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Fit",
                    style: text30.copyWith(
                      color: const Color(0xFF363636),
                    )),
                TextSpan(
                    text: "fun",
                    style: text30.copyWith(
                      color: const Color(0xFF3CB371),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
