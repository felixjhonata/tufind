import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginOrRegisterPage extends StatelessWidget {
  const LoginOrRegisterPage({super.key});

  final lightBlue = const Color(0xff0583D2);
  final darkBlue = const Color(0xff16558F);

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
    return Scaffold(
      body: Stack(
        children: [
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),

                // TUFIND Logo
                SvgPicture.asset(
                  "assets\\images\\TuFind_Logo.svg",
                  width: 200,
                ),
                const SizedBox(height: 10),
                getTitle(),

                const SizedBox(height: 100),

                // Having troubles?
                link(toHelp),

                const SizedBox(height: 20),

                // Login Button
                makeButton(
                  "LOGIN",
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: lightBlue,
                  ),
                  const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  toLogin,
                ),

                const SizedBox(height: 10),

                // Register Button
                makeButton(
                  "REGISTER",
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    border: Border.all(
                      color: lightBlue,
                    ),
                  ),
                  TextStyle(
                    fontSize: 15,
                    color: lightBlue,
                    fontWeight: FontWeight.w700,
                  ),
                  toRegister,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget makeButton(
      String label, BoxDecoration decoration, TextStyle style, var onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(15),
        decoration: decoration,
        alignment: Alignment.center,
        child: Text(
          label,
          style: style,
        ),
      ),
    );
  }

  Widget link(var onTap) {
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

  Widget getTitle() {
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
