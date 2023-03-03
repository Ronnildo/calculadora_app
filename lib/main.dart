import 'package:calculator/src/controller/theme_app.dart';
import 'package:calculator/src/view/calculate_main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: const Calculator(title: 'Calculator'),
            theme: state,
          );
        },
      ),
    );
  }
}

class CalculatorObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      print("${bloc.runtimeType} $change");
    }
  }
}
