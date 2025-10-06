import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final String buttonText;

  const ButtonText(String this.buttonText, {super.key});
  @override
  Widget build(BuildContext context) {
    return (Text(
      buttonText,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'delius',
      ),
    ));
  }
}
