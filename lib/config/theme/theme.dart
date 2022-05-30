import 'package:flutter/material.dart';

import 'palette.dart';

class AppTheme {
  AppTheme._();

  static get appTheme => ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Palette.black100,
          onPrimary: Palette.red,
          secondary: Palette.blueFaded,
          onSecondary: Palette.black100,
          error: Palette.red,
          onError: Palette.red,
          background: Palette.white,
          onBackground: Palette.black100,
          surface: Palette.gray100,
          onSurface: Palette.white,
        ),
        fontFamily: 'Matter',
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: Palette.black50,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
          headline2: TextStyle(
            color: Palette.black100,
            fontWeight: FontWeight.w700,
            fontSize: 16.0,
          ),
          headline3: TextStyle(
            color: Palette.black100,
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
          headline4: TextStyle(
            color: Palette.white,
            fontWeight: FontWeight.w700,
            fontSize: 14.0,
          ),
          headline5: TextStyle(
            color: Palette.white,
            fontWeight: FontWeight.w500,
            fontSize: 10.0,
          ),
          headline6: TextStyle(
            color: Palette.black10,
            fontWeight: FontWeight.w400,
            fontSize: 10.0,
          ),
          bodyText1: TextStyle(
            color: Palette.black100,
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
          ),
          bodyText2: TextStyle(
            color: Palette.black10,
            fontWeight: FontWeight.w400,
            fontSize: 15.0,
          ),
        ),
      );
}
