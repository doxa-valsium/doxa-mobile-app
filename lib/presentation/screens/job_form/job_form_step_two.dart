import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/formfield_title_with_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class JobFormStepTwo extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;

  const JobFormStepTwo({Key? key,
    required this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const JobFieldTitleWithInfo(
              title: "Description",
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 350,
              child: CustomFormBuilderTextField(
                name: "description",
                focusNode: FocusNode(),
                controller: TextEditingController(),
                keyboardType: TextInputType.multiline,
                labelText: "Description the oppurtunity...",
                expands: true,
                validators: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.max(250),
                ]),
              ),
            ),
          ],
        ));
  }
}
