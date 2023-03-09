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
  TextEditingController _controller = TextEditingController();
  String calc = "";

  void calculate(String simb) {
    calc = _controller.text;
    if (simb == "=") {
      print(calc);
      print(calc.length);
    } else if (simb == "") {
      _controller.text = "";
    } else if (simb == "del") {
      String delete = "";
      for (var i = 0; i < calc.length - 1; i++) {
        delete += calc[i];
      }
      setState(() {
        _controller.text = delete;
      });
    } else {
      setState(() {
        _controller.text += simb;
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
              padding: const EdgeInsets.only(
                right: 16.0,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _controller.text,
                        style: TextStyle(
                          color: cores.background,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.3,
                        height: 50,
                        child: TextField(
                          controller: _controller,
                          keyboardType: TextInputType.text,
                          //enabled: false,
                          textAlign: TextAlign.end,
                          decoration: InputDecoration(
                            hintText: "0",
                            hintStyle: TextStyle(
                              color: cores.background,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: TextStyle(
                            color: cores.background,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
                right: 16,
              ),
              height: MediaQuery.of(context).size.height / 1.43,
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
                padding: const EdgeInsets.only(
                  //top: 32,
                  left: 10,
                  right: 10,
                  //bottom: 32,
                ),
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: [
                  ButtonCalculator(
                    simbolo: "AC",
                    corSimbolo: const Color(0xFF6BE7C4),
                    onTap: () => calculate(""),
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.plusMinus,
                    corIcon: const Color(0xFF6BE7C4),
                    onTap: () => calculate("+-"),
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.percent,
                    corIcon: const Color(0xFF6BE7C4),
                    onTap: () => calculate("%"),
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.divide,
                    corIcon: Colors.redAccent.shade400,
                    onTap: () => calculate("/"),
                  ),
                  ButtonCalculator(
                    simbolo: "7",
                    corSimbolo: cores.background,
                    onTap: () => calculate("7"),
                  ),
                  ButtonCalculator(
                    simbolo: "8",
                    corSimbolo: cores.background,
                    onTap: () => calculate("8"),
                  ),
                  ButtonCalculator(
                    simbolo: "9",
                    corSimbolo: cores.background,
                    onTap: () => calculate("9"),
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.xmark,
                    corIcon: Colors.redAccent.shade400,
                    onTap: () => calculate("x"),
                  ),
                  ButtonCalculator(
                    simbolo: "4",
                    corSimbolo: cores.background,
                    onTap: () => calculate("4"),
                  ),
                  ButtonCalculator(
                    simbolo: "5",
                    corSimbolo: cores.background,
                    onTap: () => calculate("5"),
                  ),
                  ButtonCalculator(
                    simbolo: "6",
                    corSimbolo: cores.background,
                    onTap: () => calculate("6"),
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.minus,
                    corIcon: Colors.redAccent.shade400,
                    onTap: () => calculate("-"),
                  ),
                  ButtonCalculator(
                    simbolo: "1",
                    corSimbolo: cores.background,
                    onTap: () => calculate("1"),
                  ),
                  ButtonCalculator(
                    simbolo: "2",
                    corSimbolo: cores.background,
                    onTap: () => calculate("2"),
                  ),
                  ButtonCalculator(
                    simbolo: "3",
                    corSimbolo: cores.background,
                    onTap: () => calculate("3"),
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.plus,
                    corIcon: Colors.redAccent.shade400,
                    onTap: () => calculate("+"),
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.rotateLeft,
                    corIcon: cores.background,
                    onTap: () => calculate("del"),
                  ),
                  ButtonCalculator(
                    simbolo: "0",
                    corSimbolo: cores.background,
                    onTap: () => calculate("0"),
                  ),
                  ButtonCalculator(
                    simbolo: ".",
                    corSimbolo: cores.background,
                    onTap: () => calculate(","),
                  ),
                  ButtonIcon(
                    icon: FontAwesomeIcons.equals,
                    corIcon: Colors.redAccent.shade400,
                    onTap: () => calculate("="),
                  )
                ],
              ),
            )
            // TecladoCalculadora(
            //   controllerCalc: _controller.text,
            // ),
          ],
        ),
      ),
    );
  }
}
