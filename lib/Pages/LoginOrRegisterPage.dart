import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tufind/Components/MyLink.dart';
import 'package:tufind/Components/MyBarButton.dart';
import 'package:tufind/Pages/LoginPage.dart';

class LoginOrRegisterPage extends StatelessWidget {
  const LoginOrRegisterPage({super.key});

  void toHelp(BuildContext context) {
    // TODO: Go to help page
  }

  void toLogin(BuildContext context) {
    // TODO: Go to login page
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ));
  }

  void toRegister(BuildContext context) {
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
          Column(
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
              MyLink(
                text: "Having troubles?",
                onTap: () => toHelp(context),
                color: lightBlue,
              ),

              const SizedBox(height: 20),

              // Login Button
              MyBarButton(
                label: "LOGIN",
                isFill: true,
                onTap: () => toLogin(context),
              ),

              const SizedBox(height: 10),

              // Register Button
              MyBarButton(
                label: "REGISTER",
                isFill: false,
                onTap: () => toRegister(context),
              ),
            ],
          ),
        ],
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
