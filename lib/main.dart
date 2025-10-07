import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/userInformationFlow/personalInfo.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';
import 'package:flutter_application_1/screens/login.dart';
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
      theme: ThemeData(
        fontFamily: 'Delius',
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColorScheme.ascent1,
          foregroundColor: AppColorScheme.primary1,
          elevation: 0,
          toolbarHeight: 100,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w700,
            color: AppColorScheme.primary1,
          ),
        ),
      ),
      home: const LoginScreen(),
      routes: {
        '/signup': (context) => const SignUpScreen(),
        '/personalInfo': (context) => const PersonalInfoScreen(),
      },
    );
  }
}
