import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: 35,
      child: GestureDetector(
        excludeFromSemantics: true,
        onTap: () => Navigator.pop(context),
        child: Container(
          width: 60,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey[500]!,
                offset: Offset.zero,
                blurRadius: 15.0,
              ),
            ],
          ),
          child: const Icon(
            Icons.arrow_back_rounded,
            size: 30,
          ),
        ),
      ),
    );
  }
}
