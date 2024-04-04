import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tufind/Components/MyBackButton.dart';
import 'package:tufind/Components/MyBarButton.dart';
import 'package:tufind/Components/MyCheckBox.dart';
import 'package:tufind/Components/MyLink.dart';
import 'package:tufind/Components/MyPasswordField.dart';
import 'package:tufind/Components/MyTextField.dart';
import 'package:tufind/Pages/LoginPage.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  toLogin(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ));
  }

  registerToggle() {}

  toTermsAndConditions() {}

  @override
  Widget build(BuildContext context) {
    var lightBlue = Theme.of(context).colorScheme.secondary;
    var darkBlue = Theme.of(context).colorScheme.primary;

    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    TextEditingController confirmPassController = TextEditingController();

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
                  top: MediaQuery.of(context).size.height * 112 / 100,
                  child: SvgPicture.asset("assets\\images\\vector-2.svg"),
                ),

                // Body
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 130),

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
                            "REGI",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w800,
                              color: darkBlue,
                              fontSize: 45,
                            ),
                          ),
                          Text(
                            "STER",
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

                      // Name Field
                      MyTextField(
                        color: lightBlue,
                        controller: nameController,
                        text: "Full Name",
                        icon: Icons.person,
                      ),
                      const SizedBox(height: 10),

                      // Email Field
                      MyTextField(
                        color: lightBlue,
                        controller: emailController,
                        text: "Email (Optional)",
                        icon: Icons.mail,
                      ),
                      const SizedBox(height: 10),

                      // Phone No. Field
                      MyTextField(
                        color: lightBlue,
                        controller: phoneController,
                        text: "Phone No.",
                        icon: Icons.phone,
                      ),
                      const SizedBox(height: 10),

                      // Password Field
                      MyPasswordField(
                        text: "Password",
                        color: lightBlue,
                        controller: passController,
                      ),
                      const SizedBox(height: 10),

                      // Password Field
                      MyPasswordField(
                        text: "Confirm Password",
                        color: lightBlue,
                        controller: confirmPassController,
                      ),
                      const SizedBox(height: 15),

                      // Agree to the terms and conditions
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const MyCheckBox(),
                          const Text("I agree to the "),
                          MyLink(
                              onTap: toTermsAndConditions,
                              text: "Terms and Conditions",
                              color: lightBlue),
                          const SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(height: 15),

                      // Separator
                      SvgPicture.asset("assets\\images\\Separator.svg"),
                      const SizedBox(height: 15),

                      // Bar Button
                      MyBarButton(
                          label: "REGISTER",
                          isFill: true,
                          onTap: registerToggle),
                      const SizedBox(height: 80),

                      // To Register Page
                      const Text("Already have an account?"),
                      const SizedBox(height: 5),
                      MyLink(
                          onTap: () => toLogin(context),
                          text: "Login Here",
                          color: lightBlue),

                      const SizedBox(height: 50),
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
