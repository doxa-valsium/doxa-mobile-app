import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/add_qualification_button.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/formfield_title_with_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class JobFormStepThree extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey;

  final FocusNode experienceFocusNode = FocusNode();
  final Function(Map<String, dynamic>) onAdd;
  final Function(Map<String, dynamic>) onDelete;
  final List<Map<String, dynamic>> qualifications;

  JobFormStepThree({
        Key? key, 
        required this.onAdd, 
        required this.onDelete, 
        required this.formKey,
        required this.qualifications,
        }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const JobFieldTitleWithInfo(
              title: "Experience",
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
              qualifications: qualifications,
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
