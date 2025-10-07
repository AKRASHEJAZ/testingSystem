import 'package:flutter/material.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';

class DateInputBox extends StatefulWidget {
  final String? hintText;
  final DateTime? value;
  final ValueChanged<DateTime?>? onChanged;

  const DateInputBox({super.key, this.hintText, this.value, this.onChanged});

  @override
  State<DateInputBox> createState() => _DateInputBoxState();
}

class _DateInputBoxState extends State<DateInputBox> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.value != null ? _format(widget.value!) : '',
    );
  }

  @override
  void didUpdateWidget(covariant DateInputBox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _controller.text = widget.value != null ? _format(widget.value!) : '';
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _format(DateTime date) {
    String two(int n) => n.toString().padLeft(2, '0');
    return '${date.year}-${two(date.month)}-${two(date.day)}';
  }

  Future<void> _pickDate() async {
    final DateTime now = DateTime.now();
    final DateTime first = DateTime(1900);
    final DateTime last = DateTime(now.year + 1);
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.value ?? DateTime(now.year - 18, now.month, now.day),
      firstDate: first,
      lastDate: last,
    );
    if (picked != null) {
      // Update local text immediately for snappier UX
      _controller.text = _format(picked);
      widget.onChanged?.call(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        controller: _controller,
        readOnly: true,
        onTap: _pickDate,
        style: const TextStyle(color: AppColorScheme.primary2, fontSize: 20, fontWeight: FontWeight.w700),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: widget.hintText ?? 'YYYY-MM-DD',
          labelText: widget.hintText ?? 'Date',
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
          suffixIcon: const Icon(Icons.calendar_today, color: AppColorScheme.primary2),
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


