import 'package:cached_network_image/cached_network_image.dart';
import 'package:doxa_mobile_app/presentation/screens/company_profile_sceen/local_widgets/company_banner.dart';
import 'package:doxa_mobile_app/presentation/widgets/anchored_single_child_scroll_view.dart';
import 'package:doxa_mobile_app/presentation/widgets/avatar.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar_and_body.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_elevated_button.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen.dart/list_screen.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class EditCompanyScreen extends StatelessWidget {
  static const String route = 'edit-company-screen';
  final _formKey = GlobalKey<FormBuilderState>();
  EditCompanyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: SafeArea(
          child: CustomAppBarAndBody(
            title: 'Edit Company',
            showBackButton: true,
            body: AnchoredSingleChildScrollView(
              childPadding: const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
              anchorPadding: const EdgeInsets.all(20),
              anchorElevation: Styles.elevation2,
              anchor: CustomElevatedButton(
                buttonText: 'Save',
                onPressed: () {
                  if (_formKey.currentState!.saveAndValidate()) {}
                },
              ),
              child: FormBuilder(
                  autoFocusOnValidationFailure: false,
                  key: _formKey,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      "Industry",
                      style: Theme.of(context).textTheme.headline6!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 16),
                    CustomFormBuilderDropDown(
                      name: "industry",
                      labelText: "Industry",
                      validators: FormBuilderValidators.required(),
                      child: const ListScreen(
                        type: FormListType.dynamicList,
                        title: 'Industry',
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Location",
                      style: Theme.of(context).textTheme.headline6!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 16),
                    CustomFormBuilderDropDown(
                      name: "location",
                      labelText: "Location",
                      validators: FormBuilderValidators.required(),
                      child: const ListScreen(
                        type: FormListType.dynamicList,
                        title: 'Location',
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Bio",
                      style: Theme.of(context).textTheme.headline6!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 200,
                      child: CustomFormBuilderTextField(
                        name: "bio",
                        controller: TextEditingController(),
                        keyboardType: TextInputType.multiline,
                        labelText: "Description the Company...",
                        expands: true,
                        validators: FormBuilderValidators.compose([FormBuilderValidators.max(250), FormBuilderValidators.required()]),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Contact",
                      style: Theme.of(context).textTheme.headline6!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormBuilderTextField(
                      name: "phone1",
                      controller: TextEditingController(),
                      labelText: "Contact",
                      validators: FormBuilderValidators.compose([
                        FormBuilderValidators.numeric(),
                      ]),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Website",
                      style: Theme.of(context).textTheme.headline6!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomFormBuilderTextField(
                      name: "website",
                      controller: TextEditingController(),
                      labelText: "Website",
                      validators: FormBuilderValidators.compose([
                        FormBuilderValidators.url(),
                      ]),
                    ),
                  ])),
            ),
          ),
        ));
  }
}
