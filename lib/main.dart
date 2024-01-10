import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/bindings/login_binding.dart';
import 'package:hahu_hoheng_fitfun/firebase_options.dart';
import 'package:hahu_hoheng_fitfun/themes/app_theme.dart';
import 'package:hahu_hoheng_fitfun/views/login.dart';
import 'package:hahu_hoheng_fitfun/views/splash.dart';
import 'routes/route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
      initialBinding: LoginBinding(),
      home: const SplashView(),
    );
  }
}
