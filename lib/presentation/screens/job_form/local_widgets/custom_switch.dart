import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  var options = ["Option 1", "Option 2", "Option 3"];
  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      name: "name",
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
      builder: (FormFieldState<dynamic> field) {
        return InputDecorator(
          decoration: InputDecoration(isDense: true, enabled: false, contentPadding: const EdgeInsets.all(0), fillColor: Theme.of(context).colorScheme.background),
          child: Container(
            height: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.background,
            ),
            child: Stack(fit: StackFit.loose, clipBehavior: Clip.hardEdge, alignment: Alignment.topLeft, children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                top: 8,
                left: 8,
                // TODO: Need to create a switch buttonn of preferred and required
                child: Container(
                  height: 28,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  width: MediaQuery.of(context).size.width / 2.5,
                  alignment: Alignment.center,
                  child: Text(
                    "Preferred",
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.background),
                  ),
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}
