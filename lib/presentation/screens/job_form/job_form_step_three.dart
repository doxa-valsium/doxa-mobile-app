import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/add_qualification_button.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/formfield_title_with_info.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class JobFormStepThree extends StatelessWidget {
  final FocusNode experienceFocusNode = FocusNode();
  final Function(Map<String, dynamic>) onAdd;
  final Function(Map<String, dynamic>) onDelete;

  JobFormStepThree({Key? key, required this.onAdd, required this.onDelete}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            JobFieldTitleWithInfo(
              title: "Experience",
              onInfo: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            CustomFormBuilderTextField(
              name: "experienceYears",
              focusNode: experienceFocusNode,
              controller: TextEditingController(),
              labelText: "Years of experience",
              keyboardType: TextInputType.number,
              validators: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.numeric(),
                FormBuilderValidators.maxLength(8),
              ]),
            ),
            const SizedBox(
              height: 16,
            ),
            AddQualificationButton(
              focusNode: experienceFocusNode,
              onAdd: (map) {
                onAdd(map);
              },
              onDelete: (map) {
                onDelete(map);
              },
            ),
          ],
        ));
  }
}
