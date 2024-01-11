import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';
import 'package:hahu_hoheng_fitfun/widgets/login/bottom_section.dart';
import 'package:hahu_hoheng_fitfun/widgets/login/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Login",
                    style: text28,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SvgPicture.asset(
                    "assets/svg/logo.svg",
                    height: 50,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const LoginForm(),
                  const SizedBox(
                    height: 20,
                  ),
                  const LoginBottomSection()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
