import 'package:flutter/material.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';

class Inputbox extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  const Inputbox(
    this.hintText, {
    super.key,
    this.controller,
    this.onChanged,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        style: const TextStyle(color: AppColorScheme.primary2, fontSize: 20, fontWeight: FontWeight.w700),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          labelText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelStyle: const TextStyle(
            color: AppColorScheme.primary2,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
          floatingLabelStyle: const TextStyle(
            color: AppColorScheme.primary2,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
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
