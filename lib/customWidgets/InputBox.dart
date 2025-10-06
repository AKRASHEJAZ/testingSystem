import 'package:flutter/material.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';

class Inputbox extends StatelessWidget {
  final String? hintText;
  const Inputbox(this.hintText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        style: const TextStyle(color: AppColorScheme.primary2, fontSize: 20),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColorScheme.ascent3, width: 2.0),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColorScheme.ascent3, width: 2.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColorScheme.ascent3, width: 3.0),
          ),
        ),
      ),
    );
  }
}
