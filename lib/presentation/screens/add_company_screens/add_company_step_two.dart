import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/formfield_title_with_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class AddCompanyStepTwo extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;
  const AddCompanyStepTwo({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const JobFieldTitleWithInfo(
              title: "Optional Info",
              isOptional: false,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomFormBuilderTextField(
                name: "email",
                formKey: formKey,
                focusNode: FocusNode(),
                controller: TextEditingController(),
                labelText: "Email",
                validators: FormBuilderValidators.compose([
                  FormBuilderValidators.email(),
                ])),
            const SizedBox(
              height: 16,
            ),
            CustomFormBuilderTextField(
                name: "phone",
                focusNode: FocusNode(),
                formKey: formKey,
                controller: TextEditingController(),
                labelText: "Phone",
                validators: FormBuilderValidators.compose([
                  FormBuilderValidators.numeric(),
                ])),
            const SizedBox(
              height: 16,
            ),
            CustomFormBuilderTextField(
              focusNode: FocusNode(),
              formKey: formKey,
              name: "website",
              controller: TextEditingController(),
              labelText: "Website",
              validators: FormBuilderValidators.compose([FormBuilderValidators.url()]),
            ),
          ],
        ));
  }
}
