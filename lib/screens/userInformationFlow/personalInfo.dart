import 'package:flutter/material.dart';
import 'package:flutter_application_1/customWidgets/buttons/button.dart';
import 'package:flutter_application_1/customWidgets/inputs/dateInputBox.dart';
import 'package:flutter_application_1/customWidgets/inputs/dropdownListBox.dart';
import 'package:flutter_application_1/customWidgets/inputs/InputBox.dart';
import 'package:flutter_application_1/miscs/colorScheme.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _fatherNameController = TextEditingController();
  DateTime? _dob;
  String? _gender;

  @override
  void dispose() {
    _nameController.dispose();
    _fatherNameController.dispose();
    super.dispose();
  }

  void _submit() {
    final Map<String, dynamic> data = {
      'name': _nameController.text.trim(),
      'fatherName': _fatherNameController.text.trim(),
      'dob': _dob?.toIso8601String(),
      'gender': _gender,
    };

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Submitted Data'),
        content: Text(data.toString()),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.background1,
      appBar: AppBar(
        backgroundColor: AppColorScheme.ascent1,
        foregroundColor: AppColorScheme.primary1,
        title: const Text('Personal Info'),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // Name
              Inputbox(
                'Name',
                controller: _nameController,
                keyboardType: TextInputType.name,
              ),

              // Father Name
              Inputbox(
                'Father Name',
                controller: _fatherNameController,
                keyboardType: TextInputType.name,
              ),

              // DOB
              DateInputBox(
                hintText: 'Date of Birth',
                value: _dob,
                onChanged: (d) => setState(() => _dob = d),
              ),

              // Gender
              DropdownListInputBox<String>(
                hintText: 'Gender',
                values: const ['Male', 'Female', 'Other'],
                value: _gender,
                onChanged: (val) => setState(() => _gender = val),
              ),

              // Submit (use custom Button)
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Button('Submit', onPressed: _submit),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
