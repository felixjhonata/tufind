import 'package:flutter/material.dart';

class MyLink extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color color;

  const MyLink(
      {super.key,
      required this.onTap,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          decoration: TextDecoration.underline,
          decorationColor: color,
        ),
      ),
    );
  }
}
