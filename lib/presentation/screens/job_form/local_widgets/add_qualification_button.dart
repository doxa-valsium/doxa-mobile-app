import 'package:doxa_mobile_app/business_logic/cubits/add_qualification_button/add_qualification_button_qubit.dart';
import 'package:doxa_mobile_app/business_logic/cubits/add_qualification_button/add_qualification_button_state.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/custom_switch.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen.dart/list_screen.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

class AddQualificationButton extends StatefulWidget {
  const AddQualificationButton({Key? key}) : super(key: key);

  @override
  State<AddQualificationButton> createState() => _AddQualificationButtonState();
}

class _AddQualificationButtonState extends State<AddQualificationButton> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddQualificationButtonCubit>(
      create: (context) => AddQualificationButtonCubit(buttonHeight: 54, isExpanded: false, showContainers: false, context: context),
      child: BlocBuilder<AddQualificationButtonCubit, AddQualificationButtonState>(
        // bloc: addQualificationButtonCubit,
        builder: (context, state) {
          return GestureDetector(
            onTap: () async {
              BlocProvider.of<AddQualificationButtonCubit>(context).expand();
              await Future.delayed(const Duration(milliseconds: 300));
              BlocProvider.of<AddQualificationButtonCubit>(context).showContainer();
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.onSecondaryContainer,
              ),
              duration: const Duration(milliseconds: 200),
              height: state.buttonHeight,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: state.isExpanded ? MainAxisAlignment.start : MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: state.isExpanded ? MainAxisAlignment.start : MainAxisAlignment.center,
                      children: [
                        if (!state.isExpanded)
                          Iconify(
                            Ic.baseline_add_circle_outline,
                            size: 24,
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Add Qualification",
                          style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                        ),
                      ],
                    ),
                    Offstage(
                      offstage: !state.showContainers,
                      child: const SizedBox(
                        height: 16,
                      ),
                    ),
                    Offstage(
                      offstage: !state.showContainers,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 200),
                        opacity: state.showContainers ? 1 : 0,
                        child: CustomFormBuilderDropDown(
                            name: "qualificationDegree",
                            labelText: "Degree",
                            invertColors: true,
                            validators: FormBuilderValidators.required(),
                            child: const ListScreen(
                              type: FormListType.dynamicList,
                              title: "Degree",
                            )),
                      ),
                    ),
                    Offstage(
                      offstage: !state.showContainers,
                      child: const SizedBox(
                        height: 16,
                      ),
                    ),
                    Offstage(
                      offstage: !state.showContainers,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 200),
                        opacity: state.showContainers ? 1 : 0,
                        child: CustomFormBuilderDropDown(
                            name: "qualificationMajor",
                            labelText: "Major",
                            invertColors: true,
                            validators: FormBuilderValidators.required(),
                            child: const ListScreen(
                              type: FormListType.dynamicList,
                              title: "Major",
                            )),
                      ),
                    ),
                    Offstage(
                      offstage: !state.showContainers,
                      child: const SizedBox(
                        height: 16,
                      ),
                    ),
                    Offstage(
                      offstage: !state.showContainers,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 200),
                        opacity: state.showContainers ? 1 : 0,
                        child: const CustomSwitch(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
