import 'package:doxa_mobile_app/models/models.dart';
import 'package:doxa_mobile_app/presentation/widgets/formfield_title_with_info.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen/list_screen.dart';
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
          const JobFieldTitleWithInfo(
            title: "Job Title",
          ),
          const SizedBox(height: 16),
          CustomFormBuilderTextField(
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
          const JobFieldTitleWithInfo(
            title: "Job Nature",
          ),
          const SizedBox(height: 16),
          CustomFormBuilderDropDown(
            name: "employementType",
            labelText: "Employement Type",
            holdVal: true,
            validators: FormBuilderValidators.required(),
            child: const ListScreen(
              selectableType: EmploymentType,
              type: FormListType.staticList,
              title: "Employement Type",
            ),
          ),
          const SizedBox(height: 16),
          CustomFormBuilderDropDown(
            holdVal: true,
            name: "workplaceType",
            labelText: "Workplace Type",
            validators: FormBuilderValidators.required(),
            child: const ListScreen(
              selectableType: WorkplaceType,
              type: FormListType.staticList,
              title: "Workplace Type",
            ),
          ),
          const SizedBox(height: 16),
          CustomFormBuilderDropDown(
            holdVal: true,
            name: "location",
            labelText: "Location",
            validators: FormBuilderValidators.required(),
            child: const ListScreen(
              selectableType: Location,
              type: FormListType.staticList,
              title: "Location",
            ),
          )
        ],
      ),
    );
  }
}
