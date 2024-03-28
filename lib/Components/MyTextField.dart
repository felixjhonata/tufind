import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Color color;
  final TextEditingController controller;

  const MyTextField({super.key, required this.color, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 10 / 100),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Email / Phone No.",
          prefixIcon: Icon(
            Icons.account_box_rounded,
            color: color,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
