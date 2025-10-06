import 'package:flutter/material.dart';
import 'package:flutter_application_1/customWidgets/typography/buttonText.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';

class Button1 extends StatelessWidget {
  final String buttonText;
  const Button1(this.buttonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColorScheme.ascent2,
            foregroundColor: AppColorScheme.primary2,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: ButtonText(buttonText),
        ),
      ],
    );
  }
}
