import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Map<String, dynamic>> tabs = [
    {"name": "Beranda", "icon": "assets/icons/home.svg"},
    {"name": "Aktivitas", "icon": "assets/icons/activity.svg"},
    {"name": "Makanan", "icon": "assets/icons/food.svg"},
    {"name": "Profil", "icon": "assets/icons/profile.svg"},
  ];

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }
}
