import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/services/auth_service.dart';

class SignupController extends GetxController {
  final AuthService _auth = AuthService();
  late final TextEditingController name;
  late final TextEditingController email;
  late final TextEditingController pass;
  late final FocusNode nameNode;
  late final FocusNode emailNode;
  late final FocusNode passNode;
  RxBool isNameInvalid = false.obs;
  RxBool isEmailInvalid = false.obs;
  RxBool isPassInvalid = false.obs;
  RxBool isEmailFocus = false.obs;
  RxBool isPassFocus = false.obs;
  RxBool isVisible = false.obs;
  RxBool isLoading = false.obs;

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
    isNameInvalid.value = false;
    isEmailInvalid.value = false;
    isPassInvalid.value = false;
    super.dispose();
  }

  Future<void> signUp() async {
    isLoading.value = true;
    final result = await _auth.signUpWithEmailAndPassword(
        name.text.trim(), email.text.trim(), pass.text.trim());
    if (result == null) {
    } else {
      name.clear();
      email.clear();
      pass.clear();
    }
    Get.back();
    isLoading.value = false;
    update();
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
