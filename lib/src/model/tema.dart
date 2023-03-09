import 'package:flutter/material.dart';

class CalculadoraTema {
  static const _lightColor = Colors.white;
  static const _darkColor = Color(0xFF060709);

  static const ColorScheme _lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: _lightColor, // Cor de primaria
    onPrimary: Color(0xFFDFDEDE), // cor de texto
    secondary: Color(0xFFDFDEDE), // cor de ...
    onSecondary: Color(0xFFBDBEC0), // Cor de Botões
    error: Colors.red,
    onError: Colors.redAccent,
    background: Color(0xFF060709), // cor de fundo
    onBackground: Color(0xFFDFDEDE), // cor de container teclado
    surface: Color(0xFF060709), // cor icone desativado
    onSurface: Color(0xFFBDBEC0), // cor icone ativado
  );

  static const ColorScheme _darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: _darkColor, // Cor primaria
    onPrimary: Color(0xFF5D5F63), // cor de texto
    secondary: Color(0xFF5D5F63), // cor de ...
    onSecondary: Color(0xFF363E3C), // Cor de Icones
    error: Colors.red,
    onError: Colors.green,
    background: Colors.white, // cor de fundo
    onBackground: Color(0xFF5D5F63), // 0xFF5D5F63 cor de container teclado
    surface: Color(0xFFBDBEC0), // cor icone desativado
    onSurface: Colors.white, // cor icone ativado
  );

  static ThemeData darkTheme = themeData(_darkColorScheme);
  static ThemeData lightTheme = themeData(_lightColorScheme);

  static themeData(ColorScheme colorScheme) => ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: const Color(0xFF060709),
        colorScheme: colorScheme,
      );
}
