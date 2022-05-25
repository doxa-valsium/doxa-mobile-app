import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/presentation/screens/job_form/local_widgets/list_screen.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_text_form_field.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class JobFormStepOne extends StatelessWidget {
  const JobFormStepOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Basic Info",
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
          const SizedBox(height: 16),
          CustomFormBuilderTextField(
              name: "title",
              controller: TextEditingController(),
              labelText: "Title",
              validators: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.max(25),
              ])),
          const SizedBox(height: 16),
          CustomFormBuilderTextField(
            name: "headline",
            controller: TextEditingController(),
            labelText: "Headline",
            validators: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.max(25),
            ]),
          ),
          const SizedBox(height: 54),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Job Nature",
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
          const SizedBox(height: 16),
          CustomFormBuilderDropDown(
            name: "employementType",
            labelText: "Employement Type",
            validators: FormBuilderValidators.required(),
            child: const ListScreen(
              type: FormListType.staticList,
              title: "Employement Type",
            ),
          ),
          const SizedBox(height: 16),
          CustomFormBuilderDropDown(
            name: "workplaceType",
            labelText: "Workplace Type",
            validators: FormBuilderValidators.required(),
            child: const ListScreen(
              type: FormListType.staticList,
              title: "Employement Type",
            ),
          )
        ],
      ),
    );
  }
}
