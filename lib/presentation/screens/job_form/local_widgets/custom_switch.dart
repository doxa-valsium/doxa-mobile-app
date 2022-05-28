import 'package:doxa_mobile_app/business_logic/cubits/custom_switch/custom_switch_qubit.dart';
import 'package:doxa_mobile_app/business_logic/cubits/custom_switch/custom_switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class CustomSwitch extends StatelessWidget {
  final List<String> options;
  const CustomSwitch({
    Key? key,
    required this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CustomSwitchCubit>(
      create: (context) => CustomSwitchCubit(
        positionX: 8,
        toggleValue: true,
        context: context,
      ),
      child: BlocBuilder<CustomSwitchCubit, CustomSwitchState>(builder: (context, state) {
        return FormBuilderField(
          name: "name",
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
          builder: (FormFieldState<dynamic> field) {
            return GestureDetector(
              onTap: () {
                BlocProvider.of<CustomSwitchCubit>(context).toggle();
                field.didChange(state.toggleValue);
              },
              child: InputDecorator(
                decoration: InputDecoration(isDense: true, enabled: false, contentPadding: const EdgeInsets.all(0), fillColor: Theme.of(context).colorScheme.background),
                child: Container(
                  height: 48,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Stack(fit: StackFit.loose, clipBehavior: Clip.hardEdge, alignment: Alignment.topLeft, children: [
                    AnimatedPositioned(
                      curve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 200),
                      // top: 4,
                      left: state.positionX,
                      child: Container(
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        width: MediaQuery.of(context).size.width / 2.5,
                        alignment: Alignment.center,
                        child: Text(
                          state.toggleValue ? options[0] : options[1],
                          style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.background),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Visibility(
                            visible: !state.toggleValue,
                            child: Text(
                              options[0],
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                            ),
                          ),
                          Visibility(
                            visible: state.toggleValue,
                            child: Text(
                              options[1],
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
