import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/controllers/login_controller.dart';
import 'package:hahu_hoheng_fitfun/themes/app_color.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();
    return Column(
      children: [
        GetBuilder<LoginController>(
            builder: (_) => TextField(
                  controller: controller.email,
                  style: text14,
                  focusNode: controller.emailNode,
                  decoration: InputDecoration(
                      hintText: "Masukan email anda",
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          "assets/svg/email.svg",
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              controller.emailNode.hasFocus
                                  ? Colors.black
                                  : const Color(0xFFA0A8B0),
                              BlendMode.srcIn),
                        ),
                      )),
                )),
        const SizedBox(
          height: 20,
        ),
        GetBuilder<LoginController>(
          builder: (_) => TextField(
            style: text14,
            controller: controller.pass,
            focusNode: controller.passNode,
            obscureText: !controller.isVisible.value,
            decoration: InputDecoration(
                hintText: "Masukan password anda",
                suffixIcon: GestureDetector(
                  onTap: () {
                    controller.isVisible.toggle();
                    controller.update();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset(
                      controller.isVisible.value
                          ? "assets/svg/visible_pass.svg"
                          : "assets/svg/invisible_pass.svg",
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          controller.passNode.hasFocus
                              ? Colors.black
                              : const Color(0xFFA0A8B0),
                          BlendMode.srcIn),
                    ),
                  ),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(
                    "assets/svg/password.svg",
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        controller.passNode.hasFocus
                            ? Colors.black
                            : const Color(0xFFA0A8B0),
                        BlendMode.srcIn),
                  ),
                )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "Lupa Password?",
            style: text12.copyWith(color: secondaryColor),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: Get.width,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login",
                style: buttonText,
              )),
        )
      ],
    );
  }
}
