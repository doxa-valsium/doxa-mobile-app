import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/screens/sign_in_up_screen/local_widgets/type_selector.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar_and_body.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_datepicker.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen.dart/list_screen.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

class BasicInfoScreen extends StatelessWidget {
  static const String route = 'basic-info-screen';

  final DateFormat dateFormatter = DateFormat('dd-MM-yyyy');
  final _registrationFormKey = GlobalKey<FormBuilderState>();
  final Map<String, dynamic> registrationData;

  BasicInfoScreen({Key? key, required this.registrationData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: CustomAppBarAndBody(
          showBackButton: true,
          title: 'Basic Info',
          body: SingleChildScrollView(
            child: FormBuilder(
              key: _registrationFormKey,
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome! We would like to know a little more about you.",
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                    ),
                    const SizedBox(height: 16),
                    CustomFormBuilderTextField(
                      formKey: _registrationFormKey,
                      focusNode: FocusNode(),
                      name: "FirstName",
                      controller: TextEditingController(),
                      keyboardType: TextInputType.text,
                      labelText: "First Name",
                      validators: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                    ),
                    const SizedBox(height: 16),
                    CustomFormBuilderTextField(
                      formKey: _registrationFormKey,
                      focusNode: FocusNode(),
                      name: "LastName",
                      controller: TextEditingController(),
                      keyboardType: TextInputType.text,
                      labelText: "Last Name",
                      validators: FormBuilderValidators.compose([
                        FormBuilderValidators.required(),
                      ]),
                    ),
                    const SizedBox(height: 16),
                    CustomFormBuilderDropDown(
                      formKey: _registrationFormKey,
                      name: "Gender",
                      labelText: "Gender",
                      validators: FormBuilderValidators.required(),
                      child: const ListScreen(
                        type: FormListType.staticList,
                        title: "Workplace Type",
                      ),
                    ),
                    const SizedBox(height: 16),
                    CustomFormBuilderDatePicker(),
                    const SizedBox(height: 16),
                    Text(
                      "Register as",
                      style: Theme.of(context).textTheme.subtitle2?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          flex: 10,
                          child: TypeSelector(
                            bodycolor: Theme.of(context).colorScheme.onSecondaryContainer,
                            elevation: Styles.elevation3,
                            imagePath: 'assets/images/candidate.png',
                            text: 'Candidate',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          flex: 10,
                          child: TypeSelector(
                            bodycolor: Theme.of(context).colorScheme.onSecondaryContainer,
                            elevation: Styles.elevation3,
                            imagePath: 'assets/images/recruiter.png',
                            text: 'Recruiter',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      height: 50.0,
                      child: ElevatedButton(
                        child: Text(
                          'CONTINUE',
                          style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
                        ),
                        onPressed: () {
                          if (_registrationFormKey.currentState!.saveAndValidate()) {
                            Map<String, dynamic> completeRegistrationData = Map<String, dynamic>.from(_registrationFormKey.currentState!.value);
                            completeRegistrationData.addAll(registrationData);
                            logger.i(completeRegistrationData);
                            context.router.push(const EmailVerificationRoute());
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
