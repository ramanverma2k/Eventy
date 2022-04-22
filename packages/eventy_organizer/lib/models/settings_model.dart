import 'package:flutter/material.dart';

class SettingsModel {
  SettingsModel();

  static ThemeData themeData = ThemeData();

  static final _lightTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
    ),
    brightness: Brightness.light,
  );

  static final _darkTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.black,
    ),
    brightness: Brightness.dark,
  );

  static void toggleTheme() {
    if (themeData.brightness == Brightness.light) {
      themeData = _darkTheme;
    } else {
      themeData = _lightTheme;
    }
  }
}
