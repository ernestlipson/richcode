import 'package:flutter/material.dart';
import 'package:richard/colors.dart';

class CustomTheme {
  static ThemeData themeData() {
    return ThemeData(
        textTheme: TextTheme(
            bodySmall: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: grey,
    )));
  }
}
