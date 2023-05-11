import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'button_icon.dart';
import 'buttons.dart';

class TecladoCalculadora extends StatefulWidget {
  const TecladoCalculadora({
    Key? key,
  }) : super(key: key);

  @override
  State<TecladoCalculadora> createState() => _TecladoCalculadoraState();
}

class _TecladoCalculadoraState extends State<TecladoCalculadora> {
  @override
  Widget build(BuildContext context) {
    ColorScheme cores = Theme.of(context).colorScheme;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxHeight > 700 && constraints.maxWidth > 300) {
          return _largeKeyboard(cores);
        } else {
          return _minimalKeyboard(cores);
        }
      },
    );
  }

  Widget _minimalKeyboard(ColorScheme cores) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.only(top: 0),
      height: MediaQuery.of(context).size.height / 1.1,
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
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          ButtonCalculator(
            simbolo: "AC",
            corSimbolo: const Color(0xFF6BE7C4),
            onTap: () {
              print("AC");
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.plusMinus,
            corIcon: const Color(0xFF6BE7C4),
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.percent,
            corIcon: const Color(0xFF6BE7C4),
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.divide,
            corIcon: Colors.redAccent.shade400,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "7",
            corSimbolo: cores.background,
            onTap: () {},
          ),
          ButtonCalculator(
            simbolo: "8",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "9",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.xmark,
            corIcon: Colors.redAccent.shade400,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "4",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "5",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "6",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.minus,
            corIcon: Colors.redAccent.shade400,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "1",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "2",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "3",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.plus,
            corIcon: Colors.redAccent.shade400,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.rotateLeft,
            corIcon: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "0",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: ".",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.equals,
            corIcon: Colors.redAccent.shade400,
            onTap: () {
              setState(() {});
            },
          )
        ],
      ),
    );
  }

  Widget _largeKeyboard(ColorScheme cores) {
    return Container(
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
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.plusMinus,
            corIcon: const Color(0xFF6BE7C4),
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.percent,
            corIcon: const Color(0xFF6BE7C4),
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.divide,
            corIcon: Colors.redAccent.shade400,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "7",
            corSimbolo: cores.background,
            onTap: () {},
          ),
          ButtonCalculator(
            simbolo: "8",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "9",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.xmark,
            corIcon: Colors.redAccent.shade400,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "4",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "5",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "6",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.minus,
            corIcon: Colors.redAccent.shade400,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "1",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "2",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "3",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.plus,
            corIcon: Colors.redAccent.shade400,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.rotateLeft,
            corIcon: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: "0",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonCalculator(
            simbolo: ".",
            corSimbolo: cores.background,
            onTap: () {
              setState(() {});
            },
          ),
          ButtonIcon(
            icon: FontAwesomeIcons.equals,
            corIcon: Colors.redAccent.shade400,
            onTap: () {
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
