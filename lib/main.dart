import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/signup.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(fontFamily: 'Delius'),
      home: const SignUpScreen(),
    );
  }
}
