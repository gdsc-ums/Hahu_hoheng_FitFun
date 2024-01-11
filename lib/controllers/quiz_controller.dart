import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {
  late final TextEditingController tinggiBadan;
  late final TextEditingController beratBadan;
  late final TextEditingController gender;
  late final FocusNode tinggiBadanNode;
  late final FocusNode beratBadanNode;
  late final FocusNode genderNode;
  RxBool isTinggiInvalid = false.obs;
  RxBool isBeratInvalid = false.obs;
  RxBool isGenderInvalid = false.obs;
  RxBool isTinggiFocus = false.obs;
  RxBool isBeratFocus = false.obs;
  RxBool isGenderFocus = false.obs;
  RxBool isVisible = false.obs;
  RxBool isLoading = false.obs;
  List? isChecked = [];

  final List<String> quizWithImage = [
    'assets/icons/icon_love.svg',
    'assets/icons/icon_run.svg',
    'assets/icons/icon_strong.svg',
    'assets/icons/icon_health.svg',
  ];

  final List<String> quizName = [
    'Hidup Sehat',
    'Berolahraga',
    'Membentuk Otot',
    'Mengatur Pola Makan'
  ];

  final List<String> quizGender = [
    'Laki-laki',
    'Perempuan',
  ];

  @override
  void onInit() {
    isChecked =
        List.generate(quizWithImage.length, (index) => false);
    super.onInit();
  }
}
