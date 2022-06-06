import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class AddCompanyStepTwo extends StatelessWidget {
  const AddCompanyStepTwo({Key? key}) : super(key: key);

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
                  "Optional Info",
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
            CustomFormBuilderTextField(
                name: "email",
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
                controller: TextEditingController(),
                labelText: "Phone",
                validators: FormBuilderValidators.compose([
                  FormBuilderValidators.numeric(),
                ])),
            const SizedBox(
              height: 16,
            ),
            CustomFormBuilderTextField(
                name: "website", controller: TextEditingController(), labelText: "Website", validators: FormBuilderValidators.compose([FormBuilderValidators.url()])),
          ],
        ));
  }
}
