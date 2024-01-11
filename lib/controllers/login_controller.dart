import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/services/auth_service.dart';

class LoginController extends GetxController {
  final _auth = AuthService();
  late final TextEditingController email;
  late final TextEditingController pass;
  late final FocusNode emailNode;
  late final FocusNode passNode;
  RxBool isEmailInvalid = false.obs;
  RxBool isPassInvalid = false.obs;
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
    focus();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    pass.dispose();
    emailNode.dispose();
    passNode.dispose();
    super.dispose();
  }

  Future<void> login() async {
    await _auth.singInWithEmailAndPassword(email.text.trim(), pass.text.trim());
    email.clear();
    pass.clear();
    update();
  }

  void focus() {
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
  }
}
