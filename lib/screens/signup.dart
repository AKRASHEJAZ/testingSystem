import 'package:flutter/material.dart';
import 'package:flutter_application_1/customWidgets/inputs/passwordBox.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';
import 'package:flutter_application_1/customWidgets/inputs/InputBox.dart';
import 'package:flutter_application_1/customWidgets/buttons/button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.ascent1,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Icon(
              Icons.person_4_rounded,
              size: 180,
              color: AppColorScheme.primary1,
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                'SignUp',
                style: TextStyle(
                  color: AppColorScheme.primary1,
                  fontSize: 48,
                  fontFamily: 'delius',
                ),
              ),
            ),
            Inputbox("Email", keyboardType: TextInputType.emailAddress),
            PasswordInputBox("Password"),
            PasswordInputBox("ConfirmPassword"),
            Button("Sign Up", onPressed: () => Navigator.pushNamed(context, '/personalInfo')),
          ],
        ),
      ),
    );
  }
}
