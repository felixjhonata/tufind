import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  final TextEditingController controller;

  const MyTextField(
      {super.key,
      required this.color,
      required this.controller,
      required this.text,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 10 / 100),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          prefixIcon: Icon(
            icon,
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
