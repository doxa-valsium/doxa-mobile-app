import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomFormBuilderTextField extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;
  final String? Function(String?) validators;

  const CustomFormBuilderTextField({
    Key? key,
    required this.name,
    required this.controller,
    required this.labelText,
    required this.validators,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: labelText,
      ),
      validator: validators,
    );
  }
}
