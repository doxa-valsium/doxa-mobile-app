import 'package:doxa_mobile_app/business_logic/cubits/job_form_add_qualification_button/add_qualification_button_cubit.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/custom_switch.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_elevated_button.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen.dart/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddQualificationForm extends StatelessWidget {
  final AddQualificationButtonState state;
  final Function(Map<String, dynamic>) onAdd;
  final qualificationFormKey = GlobalKey<FormBuilderState>();

  AddQualificationForm({Key? key, required this.state, required this.onAdd}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: qualificationFormKey,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: state.showContainers ? 1 : 0,
            child: CustomFormBuilderDropDown(
              formKey: qualificationFormKey,
                name: "qualificationDegree",
                labelText: "Degree",
                invertColors: true,
                validators: FormBuilderValidators.required(),
                child: const ListScreen(
                  type: FormListType.dynamicList,
                  title: "Degree",
                )),
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: state.showContainers ? 1 : 0,
            child: CustomFormBuilderDropDown(
              formKey: qualificationFormKey,
                name: "qualificationMajor",
                labelText: "Major",
                invertColors: true,
                validators: FormBuilderValidators.required(),
                child: const ListScreen(
                  type: FormListType.dynamicList,
                  title: "Major",
                )),
          ),
          const SizedBox(
            height: 16,
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 200),
            opacity: state.showContainers ? 1 : 0,
            child: const CustomSwitch(
              name: "qualificationExperienceType",
              options: ["Preferred", "Required"],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          state.isEditing
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                              backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.error),
                            ),
                        child: Text(
                          "Delete",
                          style: Theme.of(context).textTheme.bodyText2?.copyWith(
                                color: Theme.of(context).colorScheme.onError,
                              ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: const CustomElevatedButton(
                        buttonText: "Edit",
                      ),
                    ),
                  ],
                )
              : SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    buttonText: "Add",
                    onPressed: () {
                      print(qualificationFormKey.currentState?.value);

                      if (qualificationFormKey.currentState!.saveAndValidate()) {
                        print(qualificationFormKey.currentState!.value);
                        onAdd(qualificationFormKey.currentState!.value);
                      }
                    },
                    // },
                  ),
                ),
        ],
      ),
    );
  }
}
