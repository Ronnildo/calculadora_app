import 'package:flutter/material.dart';

class ButtonCalculator extends StatefulWidget {
  final Color corSimbolo;
  final String simbolo;
  const ButtonCalculator({
    Key? key,
    required this.simbolo,
    required this.corSimbolo,
  }) : super(key: key);

  @override
  State<ButtonCalculator> createState() => _ButtonCalculatorState();
}

class _ButtonCalculatorState extends State<ButtonCalculator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      alignment: Alignment.center,
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        widget.simbolo,
        style: TextStyle(
          color: widget.corSimbolo,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
