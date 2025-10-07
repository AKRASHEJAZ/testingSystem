import 'package:flutter/material.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';

class DropdownListInputBox<T> extends StatelessWidget {
  final String? hintText;
  final List<T> values;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final String Function(T value)? labelBuilder;

  const DropdownListInputBox({
    super.key,
    this.hintText,
    required this.values,
    required this.value,
    required this.onChanged,
    this.labelBuilder,
  });

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<T>> items = values
        .map((v) => DropdownMenuItem<T>(
              value: v,
              child: Text(
                labelBuilder != null ? labelBuilder!(v) : v.toString(),
                style: const TextStyle(
                  color: AppColorScheme.primary2,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ))
        .toList();

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


