import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final appTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.white,
      onPrimary: Colors.white,
      secondary: Colors.white,
      onSecondary: Colors.white,
      error: Colors.white,
      onError: Colors.white,
      background: Colors.black,
      onBackground: Colors.white,
      surface: Colors.white,
      onSurface: Colors.white,
    ),
    textTheme: const TextTheme(),
  );
}
