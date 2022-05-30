import 'package:flutter/material.dart';

import 'palette.dart';

class AppTheme {
  AppTheme._();

  static final appTheme = ThemeData(
    // ignore: prefer_const_constructors
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Palette.white,
      onPrimary: Palette.black100,
      secondary: Palette.blueFaded,
      onSecondary: Palette.black100,
      error: Palette.red,
      onError: Palette.red,
      background: Palette.white,
      onBackground: Palette.black100,
      surface: Palette.gray100,
      onSurface: Palette.white,
    ),
    textTheme: const TextTheme(),
  );
}
