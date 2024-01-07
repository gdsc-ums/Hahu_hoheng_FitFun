import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hahu_hoheng_fitfun/bindings/home_binding.dart';
import 'package:hahu_hoheng_fitfun/routes/route_name.dart';
import 'package:hahu_hoheng_fitfun/themes/app_theme.dart';
import 'package:hahu_hoheng_fitfun/views/home.dart';

import 'routes/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FitFun',
      theme: AppTheme.lightTheme,
      getPages: AppPage.pages,
      home: const HomeView(),
    );
  }
}
