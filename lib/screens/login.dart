import 'package:flutter/material.dart';
import 'package:flutter_application_1/customWidgets/button1.dart';
import 'package:flutter_application_1/customWidgets/typography/heading1.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';
import '../customWidgets/InputBox.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                child: Heading("Login"),
              ),
              Inputbox("Name"),
              Inputbox("Father Name"),
              Button1("Login"),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
