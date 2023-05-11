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
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxHeight > 700) {
            return _largeContainer();
          } else {
            return _minimalContainer();
          }
        },
      ),
    );
  }

  Widget _minimalContainer() {
    return Container(
      padding: const EdgeInsets.all(0),
      alignment: Alignment.center,
      width: 20,
      height: 20,
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
    );
  }

  Widget _largeContainer() {
    return Container(
      padding: const EdgeInsets.all(0),
      alignment: Alignment.center,
      width: 20,
      height: 20,
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
    );
  }
}
