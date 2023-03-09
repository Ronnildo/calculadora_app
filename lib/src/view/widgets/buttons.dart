import 'package:flutter/material.dart';

class ButtonCalculator extends StatefulWidget {
  final Color corSimbolo;
  final String simbolo;
  final void Function() onTap;
  const ButtonCalculator({
    Key? key,
    required this.simbolo,
    required this.corSimbolo,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ButtonCalculator> createState() => _ButtonCalculatorState();
}

class _ButtonCalculatorState extends State<ButtonCalculator> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          widget.simbolo,
          style: TextStyle(
            color: widget.corSimbolo,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
