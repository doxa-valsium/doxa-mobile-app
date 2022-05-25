import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixWidget;
  final TextInputType? inputType;
  final bool? isPassword;
  final Icon? prefixIcon;
  final Icon? suffixIcon;

  const InputField({
    Key? key,
    required this.hintText,
    required this.suffixWidget,
    required this.inputType,
    required this.isPassword,
    required this.prefixIcon,
    this.suffixIcon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: isPassword ?? false,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffix: suffixWidget,
        hintText: hintText,
        prefixIcon: prefixIcon,
        prefixIconColor: Theme.of(context).colorScheme.surfaceVariant,
        filled: true,
        fillColor: Theme.of(context).colorScheme.onSecondaryContainer,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
