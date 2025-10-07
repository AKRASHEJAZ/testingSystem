import 'package:flutter/material.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';

class DropdownInputBox<T> extends StatelessWidget {
  final String? hintText;
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?>? onChanged;

  const DropdownInputBox({
    super.key,
    this.hintText,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InputDecorator(
        decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColorScheme.ascent3, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColorScheme.ascent3, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColorScheme.ascent3, width: 3.0),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<T>(
            isExpanded: true,
            style: const TextStyle(
              color: AppColorScheme.primary2,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
            value: value,
            hint: Text(
              hintText ?? '',
              style: const TextStyle(
                color: AppColorScheme.primary2,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            items: items,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}


