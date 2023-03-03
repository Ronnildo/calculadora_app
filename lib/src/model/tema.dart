import 'package:flutter/material.dart';

class CalculadoraTema {
  static const _lightColor = Color(0xFFDFDEDE);
  static const _darkColor = Color(0xFF060709);

  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: _lightColor,
    onPrimary: Color(0xFFDFDEDE),
    secondary: Color(0xFF5D5F63),
    onSecondary: Color(0xFF363E3C),
    error: Colors.red,
    onError: Colors.green,
    background: Color(0xFFBDBEC0),
    onBackground: Colors.white,
    surface: Colors.white,
    onSurface: Colors.white,
  );

  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: _darkColor,
    onPrimary: Color(0xFF5D5F63),
    secondary: Color(0xFF363E3C),
    onSecondary: Color(0xFFDFDEDE),
    error: Colors.red,
    onError: Colors.green,
    background: Color(0xFF060709),
    onBackground: Colors.white,
    surface: Colors.white,
    onSurface: Colors.white,
  );

  static ThemeData darkTheme = themeData(_darkColorScheme);
  static ThemeData lightTheme = themeData(_lightColorScheme);

  static themeData(ColorScheme colorScheme) => ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: const Color(0xFF060709),
        colorScheme: colorScheme,
      );
}
