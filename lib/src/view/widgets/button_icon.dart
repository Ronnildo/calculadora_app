import 'package:flutter/material.dart';

class ButtonIcon extends StatefulWidget {
  final Color corIcon;
  final IconData icon;
  const ButtonIcon({
    Key? key,
    required this.icon,
    required this.corIcon,
  }) : super(key: key);

  @override
  State<ButtonIcon> createState() => _ButtonCalculatorState();
}

class _ButtonCalculatorState extends State<ButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      alignment: Alignment.center,
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Icon(
        widget.icon,
        size: 30,
        color: widget.corIcon,
      ),
    );
  }
}
