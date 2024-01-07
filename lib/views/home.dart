import 'package:flutter/material.dart';
import 'package:hahu_hoheng_fitfun/themes/app_font.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fit Fun",
          style: text23.copyWith(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Hello World"),
      ),
    );
  }
}
