import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tufind/Model/MyBackButton.dart';
import 'package:tufind/Model/MyBarButton.dart';
import 'package:tufind/Model/MyLink.dart';
import 'package:tufind/Model/MyPasswordField.dart';
import 'package:tufind/Model/MyTextField.dart';
import 'package:tufind/View/RegisterPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  loginToggle() {
    // TODO: Validate Login and Navigate to home page
  }

  forgotPass() {
    // TODO: Forgot Password
  }

  toRegister(BuildContext context) {
    // TODO: To Register Page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const RegisterPage(),
      ),
    );
  }

  back(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var lightBlue = Theme.of(context).colorScheme.secondary;
    var darkBlue = Theme.of(context).colorScheme.primary;

    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                // Background
                Positioned(
                  right: -130,
                  top: -100,
                  child: SvgPicture.asset("assets\\images\\vector-1.svg"),
                ),
                Positioned(
                  left: -50,
                  top: MediaQuery.of(context).size.height * 90 / 100,
                  child: SvgPicture.asset("assets\\images\\vector-2.svg"),
                ),

                // Body
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),

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
                      MyTextField(
                        color: lightBlue,
                        controller: emailController,
                        text: "Email / Phone No.",
                        icon: Icons.account_box_rounded,
                      ),
                      const SizedBox(height: 10),

                      // Password Field
                      MyPasswordField(
                        text: "Password",
                        color: lightBlue,
                        controller: passController,
                      ),
                      const SizedBox(height: 15),

                      // Separator
                      SvgPicture.asset("assets\\images\\Separator.svg"),
                      const SizedBox(height: 15),

                      // Bar Button
                      MyBarButton(
                          label: "LOGIN", isFill: true, onTap: loginToggle),
                      const SizedBox(height: 30),

                      // Forgot Password?
                      MyLink(
                          onTap: forgotPass,
                          text: "Forgot Password?",
                          color: lightBlue),
                      const SizedBox(height: 50),

                      // To Register Page
                      const Text("Doesn't have an account yet?"),
                      const SizedBox(height: 5),
                      MyLink(
                          onTap: () => toRegister(context),
                          text: "Register here",
                          color: lightBlue),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Back Button
          const MyBackButton(),
        ],
      ),
    );
  }
}
