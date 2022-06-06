import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class AddCompanyStepThree extends StatelessWidget {
  const AddCompanyStepThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Company Bio",
                  style: Theme.of(context).textTheme.headline6!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Iconify(
                  Mdi.info_circle_outline,
                  size: 20,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 350,
              child: CustomFormBuilderTextField(
                name: "description",
                controller: TextEditingController(),
                keyboardType: TextInputType.multiline,
                labelText: "Describe You Company..",
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
