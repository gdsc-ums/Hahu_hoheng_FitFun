import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_font.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: primaryColor,
        textTheme: TextTheme(
            headlineLarge: text18, bodyLarge: text18, bodyMedium: text14),
        iconTheme: const IconThemeData(color: Colors.black, size: 28),
      );
}
