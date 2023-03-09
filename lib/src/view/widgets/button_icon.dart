import 'package:flutter/material.dart';

class ButtonIcon extends StatefulWidget {
  final Color corIcon;
  final IconData icon;
  final void Function() onTap;
  const ButtonIcon({
    Key? key,
    required this.icon,
    required this.corIcon,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ButtonIcon> createState() => _ButtonCalculatorState();
}

class _ButtonCalculatorState extends State<ButtonIcon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(0),
        alignment: Alignment.center,
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onSecondary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          widget.icon,
          size: 30,
          color: widget.corIcon,
        ),
      ),
    );
  }
}
