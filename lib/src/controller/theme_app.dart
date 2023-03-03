import 'package:calculator/src/model/tema.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  static final _temaEscuro = CalculadoraTema.darkTheme;
  static final _temaClaro = CalculadoraTema.lightTheme;

  ThemeCubit() : super(_temaEscuro);

  void alterarTema() => state.brightness == Brightness.light
      ? emit(_temaEscuro)
      : emit(_temaClaro);
}
