import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tufind/Components/BarButton.dart';

class LoginOrRegisterPage extends StatelessWidget {
  const LoginOrRegisterPage({super.key});

  void toHelp() {
    // TODO: Go to help page
  }

  void toLogin() {
    // TODO: Go to login page
  }

  void toRegister() {
    // TODO: Go to register page
  }

  @override
  Widget build(BuildContext context) {
    var lightBlue = Theme.of(context).colorScheme.secondary;
    var darkBlue = Theme.of(context).colorScheme.primary;

    return Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned(
            top: -150,
            left: MediaQuery.of(context).size.width / 2 - 150,
            child: SvgPicture.asset("assets\\images\\vector-1.svg"),
          ),
          Positioned(
            bottom: -85,
            left: MediaQuery.of(context).size.width / 2 - 100,
            child: SvgPicture.asset("assets\\images\\vector-2.svg"),
          ),

          // Body
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 130),

                // TUFIND Logo
                SvgPicture.asset(
                  "assets\\images\\TuFind_Logo.svg",
                  width: 200,
                ),
                const SizedBox(height: 10),

                // Title
                getTitle(darkBlue, lightBlue),

                const SizedBox(height: 80),

                // Having troubles?
                link(toHelp, lightBlue),

                const SizedBox(height: 20),

                // Login Button
                BarButton(
                  label: "LOGIN",
                  isFill: true,
                  onTap: toLogin,
                ),

                const SizedBox(height: 10),

                // Register Button
                BarButton(
                  label: "REGISTER",
                  isFill: false,
                  onTap: toRegister,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget link(var onTap, var lightBlue) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "Having troubles?",
        style: TextStyle(
          color: lightBlue,
          decoration: TextDecoration.underline,
          decorationColor: lightBlue,
        ),
      ),
    );
  }

  Widget getTitle(var darkBlue, var lightBlue) {
    double? brandNameSize = 45;
    double? taglineSize = 18;

    return Column(
      children: [
        // Brand Name
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'TU',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w800,
                color: darkBlue,
                fontSize: brandNameSize,
              ),
            ),
            Text(
              'FIND',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w800,
                color: lightBlue,
                fontSize: brandNameSize,
              ),
            ),
          ],
        ),

        // Tagline
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "a way to ",
              style: TextStyle(
                fontSize: taglineSize,
                color: darkBlue,
              ),
            ),
            Text(
              "escalate",
              style: TextStyle(
                fontSize: taglineSize,
                color: lightBlue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
