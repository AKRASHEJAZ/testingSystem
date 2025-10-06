import 'package:flutter/material.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';

class Heading extends StatelessWidget {
  final String text;
  const Heading(this.text, {super.key});
  @override
  Widget build(Object context) {
    return (Text(
      this.text,
      style: TextStyle(color: AppColorScheme.ascent1, fontSize: 48),
    ));
  }
}
