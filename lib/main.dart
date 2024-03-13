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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff16558F),
          primary: const Color(0xff16558F),
          secondary: const Color(0xff0583D2),
        ),
      ),
      home: LoginOrRegisterPage(),
    );
  }
}
