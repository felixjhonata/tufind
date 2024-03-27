import 'package:flutter/material.dart';

class MyBarButton extends StatelessWidget {
  final String label;
  final bool isFill;
  final Function()? onTap;

  const MyBarButton({
    super.key,
    required this.label,
    required this.isFill,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final lightBlue = Theme.of(context).colorScheme.secondary;

    var decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: lightBlue,
    );

    var color = Colors.white;

    if (isFill == false) {
      decoration = BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.transparent,
        border: Border.all(
          color: lightBlue,
        ),
      );

      color = lightBlue;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(15),
        decoration: decoration,
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 15,
            color: color,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
