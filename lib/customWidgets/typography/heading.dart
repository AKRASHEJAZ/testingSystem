import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  final Color color;
  const Heading(this.text, this.color, {super.key});
  @override
  Widget build(Object context) {
    return (Text(
      this.text,
      style: TextStyle(color: this.color, fontSize: 48, fontFamily: 'delius'),
    ));
  }
}
