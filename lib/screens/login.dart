import 'package:flutter/material.dart';
import 'package:flutter_application_1/customWidgets/buttons/button.dart';
import 'package:flutter_application_1/customWidgets/inputs/passwordBox.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';
import 'package:flutter_application_1/customWidgets/typography/heading.dart';
import '../customWidgets/inputs/InputBox.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              child: Heading("Login", AppColorScheme.primary1),
            ),
            Inputbox("Name", keyboardType: TextInputType.name),
            PasswordInputBox("Password"),
            Button("Login", onPressed: () {}),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/signup'),
              child: const Text('Not registered? Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
