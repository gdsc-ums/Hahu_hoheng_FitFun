import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

// import '../routes/route_name.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/logo/logo_produk.svg'),
            ],
          ),
          const SizedBox(height: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Fit",
                  style: text45.copyWith(
                    color: const Color(0xFF363636),
                  ),
                ),
                TextSpan(
                  text: "fun",
                  style: text45.copyWith(
                    color: const Color(0xFF3CB371),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
