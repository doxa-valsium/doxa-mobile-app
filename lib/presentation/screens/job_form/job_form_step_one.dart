import 'package:doxa_mobile_app/presentation/widgets/formfield_title_with_info.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen.dart/list_screen.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class JobFormStepOne extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;

  const JobFormStepOne({
    Key? key,
    required this.formKey,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          JobFieldTitleWithInfo(
            title: "Job Title",
            onInfo: () {},
          ),
          const SizedBox(height: 16),
          CustomFormBuilderTextField(
              formKey: formKey,
              name: "title",
              focusNode: FocusNode(),
              controller: TextEditingController(),
              labelText: "Title",
              validators: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.max(25),
              ])),
          const SizedBox(height: 16),
          CustomFormBuilderTextField(
              formKey: formKey,

            name: "headline",
            focusNode: FocusNode(),
            controller: TextEditingController(),
            labelText: "Headline",
            validators: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.max(25),
            ]),
          ),
          const SizedBox(height: 54),
          JobFieldTitleWithInfo(
            title: "Job Nature",
            onInfo: () {},
          ),
          const SizedBox(height: 16),
          CustomFormBuilderDropDown(
            formKey: formKey,
            name: "employementType",
            labelText: "Employement Type",
            holdVal: true,
            validators: FormBuilderValidators.required(),
            child: const ListScreen(
              type: FormListType.staticList,
              title: "Employement Type",
            ),
          ),
          const SizedBox(height: 16),
          CustomFormBuilderDropDown(
            formKey: formKey,
            holdVal: true,
            name: "workplaceType",
            labelText: "Workplace Type",
            validators: FormBuilderValidators.required(),
            child: const ListScreen(
              type: FormListType.staticList,
              title: "Workplace Type",
            ),
          )
        ],
      ),
    );
  }
}
