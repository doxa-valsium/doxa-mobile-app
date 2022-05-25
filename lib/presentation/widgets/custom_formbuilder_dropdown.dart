import 'package:doxa_mobile_app/presentation/widgets/full_screen_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class CustomFormBuilderDropDown extends StatelessWidget {
  final String name;
  final String labelText;
  final Widget child;
  final String? Function(String?) validators;
  final TextEditingController _controller = TextEditingController();

  CustomFormBuilderDropDown({
    Key? key,
    required this.name,
    required this.labelText,
    required this.validators,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      controller: _controller,
      readOnly: true,
      decoration: InputDecoration(
          hintText: labelText,
          suffixIcon: Iconify(
            Mdi.arrow_drop_down,
            size: 20,
            color: Theme.of(context).colorScheme.primary,
          )),
      validator: validators,
      onTap: () {
        fullScreenDialog(context, _controller, child);
      },
    );
  }
}
