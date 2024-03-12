import 'package:flutter/material.dart';
import 'package:tufind/Pages/LoginOrRegisterPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const LoginOrRegisterPage(),
    );
  }
}
