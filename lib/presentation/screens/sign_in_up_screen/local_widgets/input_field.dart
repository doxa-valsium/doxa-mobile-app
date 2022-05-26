import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixWidget;
  final TextInputType? inputType;
  final bool? isPassword;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final TextEditingController? controller;

  const InputField({
    Key? key,
    required this.hintText,
    this.suffixWidget,
    this.inputType,
    this.isPassword = false,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      obscureText: isPassword ?? false,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffix: suffixWidget,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
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
