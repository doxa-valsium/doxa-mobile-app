import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/formfield_title_with_info.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class JobFormStepTwo extends StatelessWidget {
  const JobFormStepTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            JobFieldTitleWithInfo(
              title: "Description",
              onInfo: () {},
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
