import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tufind/Components/MyBackButton.dart';
import 'package:tufind/Components/MyPasswordField.dart';
import 'package:tufind/Components/MyTextField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var lightBlue = Theme.of(context).colorScheme.secondary;
    var darkBlue = Theme.of(context).colorScheme.primary;

    return Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned(
            right: -130,
            top: -100,
            child: SvgPicture.asset("assets\\images\\vector-1.svg"),
          ),
          Positioned(
            left: -50,
            bottom: -70,
            child: SvgPicture.asset("assets\\images\\vector-2.svg"),
          ),

          // Back Button
          const MyBackButton(),

          // Body
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              SvgPicture.asset(
                "assets\\images\\TuFind_Logo.svg",
                width: 150,
              ),
              const SizedBox(height: 15),

              // Title
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "LOG",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                      color: darkBlue,
                      fontSize: 45,
                    ),
                  ),
                  Text(
                    "IN",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w800,
                      color: lightBlue,
                      fontSize: 45,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),

              // Username Field
              MyTextField(color: lightBlue),
              const SizedBox(height: 10),

              // Password Field
              MyPasswordField(color: lightBlue),

              // Bar Button
              // Forgot Password?
              // To Register Page
            ],
          ),
        ],
      ),
    );
  }
}
