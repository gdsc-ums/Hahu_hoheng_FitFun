import 'package:get/get.dart';

class InputValidator {
  static String? emailMessageValidation(String? value, dynamic controller) {
    if (value!.isEmpty) {
      controller.isEmailInvalid.value = true;
      controller.update();
      return "*Email tidak boleh kosong";
    } else if (!value.isEmail) {
      controller.isEmailInvalid.value = true;
      controller.update();
      return "*Email tidak valid";
    }
    controller.isEmailInvalid.value = false;
    controller.update();
    return null;
  }

  static String? passMessageValidation(String? value, dynamic controller) {
    if (value!.isEmpty) {
      controller.isPassInvalid.value = true;
      controller.update();
      return "*Password tidak boleh kosong";
    } else if (value.length < 6) {
      controller.isPassInvalid.value = true;
      controller.update();
      return "*Password harus diisi setidaknya 6 karakter";
    }
    controller.isPassInvalid.value = false;
    controller.update();
    return null;
  }
}
