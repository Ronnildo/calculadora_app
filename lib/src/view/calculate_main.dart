import 'package:calculator/src/controller/theme_app.dart';
import 'package:calculator/src/controller/validate_expression.dart';
import 'package:calculator/src/view/widgets/teclado.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/button_icon.dart';
import 'widgets/buttons.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String expr = "";
  String resultado = "0";
  String guardaExpr = "";
  void testeMuda(String muda) {
    guardaExpr = expr;
    if (expr == "0" || muda == "AC") {
      setState(() {
        expr = "";
        guardaExpr = "";
        resultado = "0";
      });
    } else if (muda == "x") {
      setState(() {
        expr += "*";
      });
    } else if (muda == "+\n-" || muda == "%") {
      setState(() {
        expr += "";
      });
    } else if (muda == "=") {
      setState(() {
        expr = "";
        resultado = "1";
      });
    } else {
      setState(() {
        expr += muda;
        guardaExpr = expr;
      });
    }
  }

  bool verificationSize(double height) {
    if (height <= 684) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme cores = Theme.of(context).colorScheme;
    ValidateExpression validateExpression = ValidateExpression(entrada: expr);
    return Scaffold(
      backgroundColor: cores.primary,
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: 105,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: cores.secondary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      final cubit = context.read<ThemeCubit>();
                      cubit.alterarTema();
                    },
                    child: Icon(
                      Icons.sunny,
                      color: cores.surface,
                      size: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      final cubit = context.read<ThemeCubit>();
                      cubit.alterarTema();
                    },
                    child: Icon(
                      Icons.nightlight_outlined,
                      color: cores.onSurface,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxHeight > 700 && constraints.maxWidth > 300) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 16.0,
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          guardaExpr,
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          expr != "" ? expr : resultado,
                          style: const TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      expr != "" ? expr : resultado,
                      style: const TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }
            }),
            const TecladoCalculadora(),
          ],
        ),
      ),
    );
  }
}
