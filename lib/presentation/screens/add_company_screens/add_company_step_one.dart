import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen.dart/list_screen.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';

class AddCompanyStepOne extends StatelessWidget {
  const AddCompanyStepOne({Key? key}) : super(key: key);

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
                "Company Details",
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
              name: "companyName",
              controller: TextEditingController(),
              labelText: "Comapany Name",
              validators: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.max(25),
              ])),
          const SizedBox(height: 16),
          CustomFormBuilderDropDown(
            name: "industry",
            labelText: "Industry",
            validators: FormBuilderValidators.required(),
            child: const ListScreen(
              type: FormListType.staticList,
              title: "Select Your Company's Industry Type",
            ),
          ),
          const SizedBox(height: 16),
          CustomFormBuilderDropDown(
            name: "location",
            labelText: "Location",
            validators: FormBuilderValidators.required(),
            child: const ListScreen(
              type: FormListType.staticList,
              title: "Select Your Company's Location",
            ),
          ),
          const SizedBox(height: 54),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Admin Details",
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
            name: "position",
            labelText: "Your Position",
            validators: FormBuilderValidators.required(),
            child: const ListScreen(
              type: FormListType.staticList,
              title: "Select Your Position",
            ),
          ),
        ],
      ),
    );
  }
}
