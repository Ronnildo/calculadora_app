import 'package:calculator/src/controller/theme_app.dart';
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

  @override
  Widget build(BuildContext context) {
    ColorScheme cores = Theme.of(context).colorScheme;
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
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
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
            ),
            Container(
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 1.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: cores.onBackground.withOpacity(0.3),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: GridView.count(
                primary: false,
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  ButtonCalculator(
                    simbolo: "AC",
                    corSimbolo: const Color(0xFF6BE7C4),
                    onTap: () {
                      print("AC");
                      testeMuda("AC");
                    },
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.plusMinus,
                    corIcon: const Color(0xFF6BE7C4),
                    onTap: () {
                      testeMuda("+\n-");
                    },
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.percent,
                    corIcon: const Color(0xFF6BE7C4),
                    onTap: () {
                      testeMuda("%");
                    },
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.divide,
                    corIcon: Colors.redAccent.shade400,
                    onTap: () {
                      testeMuda("/");
                    },
                  ),
                  ButtonCalculator(
                    simbolo: "7",
                    corSimbolo: cores.background,
                    onTap: () {
                      testeMuda("7");
                    },
                  ),
                  ButtonCalculator(
                    simbolo: "8",
                    corSimbolo: cores.background,
                    onTap: () {
                      testeMuda("8");
                    },
                  ),
                  ButtonCalculator(
                    simbolo: "9",
                    corSimbolo: cores.background,
                    onTap: () {
                      testeMuda("9");
                    },
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.xmark,
                    corIcon: Colors.redAccent.shade400,
                    onTap: () {
                      testeMuda("x");
                    },
                  ),
                  ButtonCalculator(
                    simbolo: "4",
                    corSimbolo: cores.background,
                    onTap: () {
                      testeMuda("4");
                    },
                  ),
                  ButtonCalculator(
                    simbolo: "5",
                    corSimbolo: cores.background,
                    onTap: () {
                      testeMuda("5");
                    },
                  ),
                  ButtonCalculator(
                    simbolo: "6",
                    corSimbolo: cores.background,
                    onTap: () {
                      testeMuda("6");
                    },
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.minus,
                    corIcon: Colors.redAccent.shade400,
                    onTap: () {
                      testeMuda("-");
                    },
                  ),
                  ButtonCalculator(
                    simbolo: "1",
                    corSimbolo: cores.background,
                    onTap: () {
                      testeMuda("1");
                    },
                  ),
                  ButtonCalculator(
                    simbolo: "2",
                    corSimbolo: cores.background,
                    onTap: () {
                      testeMuda("2");
                    },
                  ),
                  ButtonCalculator(
                    simbolo: "3",
                    corSimbolo: cores.background,
                    onTap: () {
                      testeMuda("3");
                    },
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.plus,
                    corIcon: Colors.redAccent.shade400,
                    onTap: () {
                      testeMuda("+");
                    },
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.rotateLeft,
                    corIcon: cores.background,
                    onTap: () {
                      setState(() {
                        expr += "";
                      });
                    },
                  ),
                  ButtonCalculator(
                    simbolo: "0",
                    corSimbolo: cores.background,
                    onTap: () {
                      testeMuda("0");
                    },
                  ),
                  ButtonCalculator(
                    simbolo: ".",
                    corSimbolo: cores.background,
                    onTap: () {
                      testeMuda(".");
                    },
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.equals,
                    corIcon: Colors.redAccent.shade400,
                    onTap: () {
                      testeMuda("=");
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
