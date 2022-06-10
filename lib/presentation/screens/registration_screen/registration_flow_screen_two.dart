import 'package:doxa_mobile_app/business_logic/cubits/registration_screen/registration_screen_cubit.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/screens/registration_screen/local_widgets/user_type_selector.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_elevated_button.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_datepicker.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_view.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen.dart/list_screen.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import '../../../business_logic/blocs/unauth_wrapper/unauth_wrapper_bloc.dart';

class RegistrationFlowScreenTwo extends StatelessWidget {
  final DateFormat dateFormatter = DateFormat('dd-MM-yyyy');
  final Map<String, dynamic> registrationData = {};

  RegistrationFlowScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UnauthWrapperBloc, UnauthWrapperState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: CustomAppBarAndBody(
              showBackButton: true,
              title: 'Basic Info',
              onBack: () => FlowView.of(context).back(),
              body: SingleChildScrollView(
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
                        formKey: BlocProvider.of<RegistrationScreenCubit>(context).formKey,
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
                        formKey: BlocProvider.of<RegistrationScreenCubit>(context).formKey,
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
                        formKey: BlocProvider.of<RegistrationScreenCubit>(context).formKey,
                        name: "Gender",
                        labelText: "Gender",
                        validators: FormBuilderValidators.required(),
                        child: const ListScreen(
                          type: FormListType.staticList,
                          title: "Workplace Type",
                        ),
                      ),
                      const SizedBox(height: 16),
                      CustomFormBuilderDatePicker(
                        name: "DOB",
                        labelText: "Date of Birth",
                      ),
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
                            child: UserTypeSelector(
                              bodycolor: Theme.of(context).colorScheme.onSecondaryContainer,
                              elevation: Styles.elevation3,
                              imagePath: 'assets/images/candidate.png',
                              text: 'Candidate',
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            flex: 10,
                            child: UserTypeSelector(
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
                        child: CustomElevatedButton(
                          buttonText: 'CONTINUE',
                          onPressed: () {
                            if (BlocProvider.of<RegistrationScreenCubit>(context).formKey.currentState!.saveAndValidate()) {
                              Map<String, dynamic> completeRegistrationData = Map<String, dynamic>.from(BlocProvider.of<RegistrationScreenCubit>(context).formKey.currentState!.value);
                              completeRegistrationData.addAll(registrationData);
                              logger.i(completeRegistrationData);
                              BlocProvider.of<RegistrationScreenCubit>(context).register();
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
        );
      },
    );
  }
}
