import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  late final TextEditingController email;
  late final TextEditingController pass;
  late final FocusNode emailNode;
  late final FocusNode passNode;
  RxBool isEmailFocus = false.obs;
  RxBool isPassFocus = false.obs;
  RxBool isVisible = false.obs;

  final List<String> loginWithImages = [
    "assets/svg/google.svg",
    "assets/svg/ios.svg",
    "assets/svg/facebook.svg",
  ];

  @override
  void onInit() {
    email = TextEditingController();
    pass = TextEditingController();
    emailNode = FocusNode();
    passNode = FocusNode();
    emailNode.addListener(() {
      if (emailNode.hasFocus) {
        isEmailFocus.value = true;
      } else {
        isEmailFocus.value = false;
      }
      update();
    });
    passNode.addListener(() {
      if (passNode.hasFocus) {
        isPassFocus.value = true;
      } else {
        isPassFocus.value = false;
      }
      update();
    });
    super.onInit();
  }

  @override
  void dispose() {
    emailNode.dispose();
    passNode.dispose();
    super.dispose();
  }
}
