import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void back(BuildContext context) {
    Navigator.pop(context);
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
            right: -130,
            top: -100,
            child: SvgPicture.asset("assets\\images\\vector-1.svg"),
          ),
          Positioned(
            left: -50,
            bottom: -70,
            child: SvgPicture.asset("assets\\images\\vector-2.svg"),
          ),

          // Button
          Positioned(
            top: 100,
            left: 50,
            child: GestureDetector(
              onTap: () => back(context),
              child: Container(
                width: 60,
                height: 60,
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
          ),

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
            ],
          ),
        ],
      ),
    );
  }
}
