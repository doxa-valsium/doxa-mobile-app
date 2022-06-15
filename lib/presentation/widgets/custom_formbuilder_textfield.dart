import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomFormBuilderTextField extends StatelessWidget {
  final GlobalKey<FormBuilderState>? formKey;
  final String name;
  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;
  final String? Function(String?) validators;
  final bool expands;
  final int minLines;
  final int maxLines;
  final FocusNode focusNode;
  final Widget? suffixWidget;
  final bool? isPassword;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool? readOnly;
  final VoidCallback? onTap;

  const CustomFormBuilderTextField({
    Key? key,
    this.formKey,
    required this.name,
    required this.controller,
    required this.labelText,
    required this.validators,
    required this.focusNode,
    this.keyboardType = TextInputType.text,
    this.expands = false,
    this.minLines = 1,
    this.maxLines = 1,
    this.suffixWidget,
    this.isPassword = false,
    this.prefixIcon,
    this.suffixIcon,
    this.readOnly = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (formKey != null) if (formKey!.currentState!.value.containsKey(name)) controller.text = formKey!.currentState!.getRawValue(name).toString();
    return FormBuilderTextField(
      focusNode: focusNode,
      textAlign: TextAlign.left,
      textAlignVertical: TextAlignVertical.top,
      style: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: Colors.black,
          ),
      name: name,
      controller: controller,
      keyboardType: keyboardType,
      expands: expands,
      minLines: expands ? null : minLines,
      maxLines: expands ? null : maxLines,
      readOnly: readOnly ?? false,
      onTap: onTap,
      decoration: InputDecoration(
        hintText: labelText,
        suffixIcon: suffixIcon,
        suffix: suffixWidget,
        prefixIcon: prefixIcon,
      ),
      validator: validators,
      obscureText: isPassword ?? false,
    );
  }
}
