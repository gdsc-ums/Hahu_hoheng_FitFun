import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  late final TextEditingController name;
  late final TextEditingController email;
  late final TextEditingController pass;
  late final FocusNode nameNode;
  late final FocusNode emailNode;
  late final FocusNode passNode;
  RxBool isEmailFocus = false.obs;
  RxBool isPassFocus = false.obs;
  RxBool isVisible = false.obs;

  @override
  void onInit() {
    name = TextEditingController();
    email = TextEditingController();
    pass = TextEditingController();
    nameNode = FocusNode();
    emailNode = FocusNode();
    passNode = FocusNode();
    focus();
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    pass.dispose();
    nameNode.dispose();
    emailNode.dispose();
    passNode.dispose();
    super.dispose();
  }

  void focus() {
    nameNode.addListener(() {
      if (emailNode.hasFocus) {
        isEmailFocus.value = true;
      } else {
        isEmailFocus.value = false;
      }
      update();
    });
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
