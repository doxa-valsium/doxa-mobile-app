import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:doxa_mobile_app/presentation/widgets/formfield_title_with_info.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AddCompanyStepOne extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  const AddCompanyStepOne({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const JobFieldTitleWithInfo(
            title: "Company Details",
            isOptional: false,
          ),
          const SizedBox(height: 16),
          CustomFormBuilderTextField(
              focusNode: FocusNode(),
              formKey: formKey,
              name: "companyName",
              controller: TextEditingController(),
              labelText: "Company Name",
              validators: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.max(25),
              ])),
          const SizedBox(height: 16),
          CustomFormBuilderDropDown(
            name: "industry",
            labelText: "Industry",
            holdVal: true,
            child: const ListScreen(
              selectableType: Industry,
              type: FormListType.staticList,
              title: "Company's Industry",
            ),
          ),
          const SizedBox(height: 16),
          CustomFormBuilderDropDown(
            name: "location",
            holdVal: true,
            labelText: "Location",
            child: const ListScreen(
              selectableType: Industry,
              type: FormListType.staticList,
              title: "Company's Location",
            ),
          ),
          const SizedBox(height: 54),
          const JobFieldTitleWithInfo(
            title: "Admin Details",
            isOptional: false,
          ),
          const SizedBox(height: 16),
          CustomFormBuilderDropDown(
            name: "position",
            holdVal: true,
            labelText: "Your Position",
            child: const ListScreen(
              selectableType: JobTitle,
              type: FormListType.staticList,
              title: "Your Position",
            ),
          ),
        ],
      ),
    );
  }
}
