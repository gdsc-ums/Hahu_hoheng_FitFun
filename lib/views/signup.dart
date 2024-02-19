import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../themes/app_color.dart';
import '../themes/app_font.dart';
import '../widgets/signup/signup_form.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Text("Sign Up", style: text28),
                  const SizedBox(height: 25),
                  SvgPicture.asset("assets/svg/logo.svg", height: 50),
                  const SizedBox(height: 50),
                  const SignupForm(),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      style: text14.copyWith(color: const Color(0xFF717784)),
                      children: [
                        const TextSpan(text: "Sudah punya akun?"),
                        const WidgetSpan(child: SizedBox(width: 5)),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: GestureDetector(
                            onTap: () => Get.back(),
                            child: const Text(
                              "Login",
                              style: TextStyle(color: secondaryColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
