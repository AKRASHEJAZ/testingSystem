import 'package:flutter/material.dart';
import 'package:flutter_application_1/customWidgets/button_style1.dart';
import '../customWidgets/InputBox.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Icon(
                Icons.person_4_rounded,
                size: 180,
                color: Colors.white,
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 48),
                ),
              ),
              Inputbox("Name"),
              Inputbox("Father Name"),
              Button1("Login"),
            ],
          ),
        ),
      ),
    );
  }
}
