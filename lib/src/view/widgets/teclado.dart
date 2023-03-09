import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'button_icon.dart';
import 'buttons.dart';

class TecladoCalculadora extends StatefulWidget {
  String controllerCalc;
  TecladoCalculadora({
    Key? key,
    required this.controllerCalc,
  }) : super(key: key);

  @override
  State<TecladoCalculadora> createState() => _TecladoCalculadoraState();
}

class _TecladoCalculadoraState extends State<TecladoCalculadora> {
  int? number;

  void addNumber() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme cores = Theme.of(context).colorScheme;
    return Container(
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
            onTap: () {},
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.plusMinus,
            corIcon: Color(0xFF6BE7C4),
            onTap: () {},
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.percent,
            corIcon: Color(0xFF6BE7C4),
            onTap: () {},
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.divide,
            corIcon: Colors.redAccent.shade400,
            onTap: () {},
          ),
          ButtonCalculator(
            simbolo: "7",
            corSimbolo: cores.background,
            onTap: () {
              widget.controllerCalc = "7";
              print("Pressed");
              print(widget.controllerCalc);
            },
          ),
          ButtonCalculator(
            simbolo: "8",
            corSimbolo: cores.background,
            onTap: () {},
          ),
          ButtonCalculator(
            simbolo: "9",
            corSimbolo: cores.background,
            onTap: () {},
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.xmark,
            corIcon: Colors.redAccent.shade400,
            onTap: () {},
          ),
          ButtonCalculator(
            simbolo: "4",
            corSimbolo: cores.background,
            onTap: () {},
          ),
          ButtonCalculator(
            simbolo: "5",
            corSimbolo: cores.background,
            onTap: () {},
          ),
          ButtonCalculator(
            simbolo: "6",
            corSimbolo: cores.background,
            onTap: () {},
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.minus,
            corIcon: Colors.redAccent.shade400,
            onTap: () {},
          ),
          ButtonCalculator(
            simbolo: "1",
            corSimbolo: cores.background,
            onTap: () {},
          ),
          ButtonCalculator(
            simbolo: "2",
            corSimbolo: cores.background,
            onTap: () {},
          ),
          ButtonCalculator(
            simbolo: "3",
            corSimbolo: cores.background,
            onTap: () {},
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.plus,
            corIcon: Colors.redAccent.shade400,
            onTap: () {},
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.rotateLeft,
            corIcon: cores.background,
            onTap: () {},
          ),
          ButtonCalculator(
            simbolo: "0",
            corSimbolo: cores.background,
            onTap: () {},
          ),
          ButtonCalculator(
            simbolo: ".",
            corSimbolo: cores.background,
            onTap: () {},
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.equals,
            corIcon: Colors.redAccent.shade400,
            onTap: () {},
          )
        ],
      ),
    );
  }
}
