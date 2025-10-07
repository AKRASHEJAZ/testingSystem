import 'package:flutter/material.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';

class PasswordInputBox extends StatefulWidget {
  final String? hintText;
  const PasswordInputBox(this.hintText, {super.key});

  @override
  State<PasswordInputBox> createState() => _PasswordInputBoxState();
}

class _PasswordInputBoxState extends State<PasswordInputBox> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        obscureText: _obscureText,
        style: const TextStyle(color: AppColorScheme.primary2, fontSize: 20),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: widget.hintText ?? 'Password',
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: AppColorScheme.primary2,
            ),
            onPressed: _toggleVisibility,
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
