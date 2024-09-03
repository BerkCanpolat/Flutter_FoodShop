import 'package:flutter/material.dart';

class QuantitiyIconbutton extends StatelessWidget {
  const QuantitiyIconbutton({super.key, required this.iconData, required this.onPressed, this.iconColor});

  final IconData iconData;
  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(iconData), color: iconColor,
    );
  }
}
