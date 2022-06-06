import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomFormBuilderTextField extends StatelessWidget {
  final String name;
  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;
  final String? Function(String?) validators;
  final bool expands;
  final int minLines;
  final int maxLines;
  final FocusNode focusNode;

  const CustomFormBuilderTextField({
    Key? key,
    required this.name,
    required this.controller,
    required this.labelText,
    required this.validators,
    required this.focusNode,
    this.keyboardType = TextInputType.text,
    this.expands = false,
    this.minLines = 1,
    this.maxLines = 1,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      focusNode: focusNode,
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.top,
      style: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
      name: name,
      controller: controller,
      keyboardType: keyboardType,
      expands: expands,
      minLines: expands ? null : minLines,
      maxLines: expands ? null : maxLines,
      decoration: InputDecoration(hintText: labelText),
      validator: validators,
    );
  }
}
