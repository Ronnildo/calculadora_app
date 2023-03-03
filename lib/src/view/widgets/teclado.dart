import 'package:flutter/material.dart';

import 'button_icon.dart';
import 'buttons.dart';

class TecladoCalculadora extends StatefulWidget {
  const TecladoCalculadora({Key? key}) : super(key: key);

  @override
  State<TecladoCalculadora> createState() => _TecladoCalculadoraState();
}

class _TecladoCalculadoraState extends State<TecladoCalculadora> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      height: MediaQuery.of(context).size.height / 1.4,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisCount: 4,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: const [
          ButtonCalculator(
            simbolo: "AC",
            corSimbolo: Colors.greenAccent,
          ),
          ButtonCalculator(
            simbolo: "+/-",
            corSimbolo: Colors.greenAccent,
          ),
          ButtonCalculator(
            simbolo: "%",
            corSimbolo: Colors.greenAccent,
          ),
          ButtonCalculator(
            simbolo: "/",
            corSimbolo: Colors.redAccent,
          ),
          ButtonCalculator(
            simbolo: "7",
            corSimbolo: Colors.white,
          ),
          ButtonCalculator(
            simbolo: "8",
            corSimbolo: Colors.white,
          ),
          ButtonCalculator(
            simbolo: "9",
            corSimbolo: Colors.white,
          ),
          ButtonCalculator(
            simbolo: "X",
            corSimbolo: Colors.redAccent,
          ),
          ButtonCalculator(
            simbolo: "4",
            corSimbolo: Colors.white,
          ),
          ButtonCalculator(
            simbolo: "5",
            corSimbolo: Colors.white,
          ),
          ButtonCalculator(
            simbolo: "6",
            corSimbolo: Colors.white,
          ),
          ButtonCalculator(
            simbolo: "-",
            corSimbolo: Colors.redAccent,
          ),
          ButtonCalculator(
            simbolo: "1",
            corSimbolo: Colors.white,
          ),
          ButtonCalculator(
            simbolo: "2",
            corSimbolo: Colors.white,
          ),
          ButtonCalculator(
            simbolo: "3",
            corSimbolo: Colors.white,
          ),
          ButtonCalculator(
            simbolo: "+",
            corSimbolo: Colors.redAccent,
          ),
          ButtonIcon(
            icon: Icons.replay,
            corIcon: Colors.white,
          ),
          ButtonCalculator(
            simbolo: "0",
            corSimbolo: Colors.white,
          ),
          ButtonCalculator(
            simbolo: ".",
            corSimbolo: Colors.white,
          ),
          ButtonCalculator(
            simbolo: "=",
            corSimbolo: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
