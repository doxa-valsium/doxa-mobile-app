import 'package:doxa_mobile_app/presentation/widgets/full_screen_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

class CustomFormBuilderDropDown extends StatelessWidget {
  final String name;
  final String labelText;
  final Widget child;
  final String? Function(String?)? validators;
  final TextEditingController _controller = TextEditingController();
  final bool invertColors;
  final bool forSkills;
  final void Function(String)? onSkillAdd;

  CustomFormBuilderDropDown({
    Key? key,
    required this.name,
    required this.labelText,
    // required this.validators,
    required this.child,
    this.invertColors = false,
    this.forSkills = false,
    this.onSkillAdd,
    this.validators,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      style: Theme.of(context).textTheme.bodyText2?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
      name: name,
      controller: _controller,
      readOnly: true,
      decoration: InputDecoration(
          hintText: labelText,
          suffixIcon: Iconify(
            Ic.round_arrow_drop_down,
            size: 8,
            color: Theme.of(context).colorScheme.primary,
          ),
          fillColor: invertColors ? Theme.of(context).colorScheme.background : null),
      validator: validators,
      onTap: () {
        if (forSkills) {
          fullScreenDialog(context, _controller, child, true, onSkillAdd);
          _controller.clear();
        } else {
          fullScreenDialog(context, _controller, child, false, null);
        }
      },
    );
  }
}
