import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/bindings/quiz_binding.dart';
import 'package:hahu_hoheng_fitfun/firebase_options.dart';
import 'package:hahu_hoheng_fitfun/themes/app_theme.dart';
import 'routes/route.dart';
import 'views/quiz/quiz.dart';

late bool isLogin;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );
  FirebaseAuth.instance.authStateChanges().listen((User? user) {
    isLogin = user != null;
  });
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: child!,
          );
        },
        title: 'FitFun',
        theme: AppTheme.lightTheme,
        getPages: AppPage.pages,
        // initialBinding: isLogin ? HomeBinding() : LoginBinding(),
        // home: isLogin ? const HomeView() : const LoginView(),
        initialBinding: QuizBinding(),
        home: const QuizView());
  }
}
