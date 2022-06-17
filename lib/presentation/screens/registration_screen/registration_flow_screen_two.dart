import 'package:doxa_mobile_app/business_logic/blocs/unauth_wrapper/unauth_wrapper_bloc.dart';
import 'package:doxa_mobile_app/business_logic/cubits/registration_screen/registration_screen_cubit.dart';
import 'package:doxa_mobile_app/models/models.dart';
import 'package:doxa_mobile_app/presentation/screens/registration_screen/local_widgets/user_type_selector.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_app_bar_and_body.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_elevated_button.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_datepicker.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_dropdown.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_view.dart';
import 'package:doxa_mobile_app/presentation/widgets/selection_list_screen/list_screen.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

class RegistrationFlowScreenTwo extends StatelessWidget {
  final DateFormat dateFormatter = DateFormat('dd-MM-yyyy');
  final UserType userType = UserType.unknown;
  final bool isSelected = false;
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  RegistrationFlowScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formState = FormBuilder.of(context);
    return BlocBuilder<RegistrationScreenCubit, RegistrationScreenState>(
      builder: (context, state) {
        final registrationCubit = BlocProvider.of<RegistrationScreenCubit>(context);
        return CustomAppBarAndBody(
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
                    name: "first_name",
                    controller: _firstNameController,
                    keyboardType: TextInputType.text,
                    labelText: "First Name",
                    validators: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  CustomFormBuilderTextField(
                    name: "last_name",
                    controller: _lastNameController,
                    keyboardType: TextInputType.text,
                    labelText: "Last Name",
                    validators: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  CustomFormBuilderDropDown(
                    name: "gender",
                    labelText: "Gender",
                    validators: FormBuilderValidators.required(),
                    holdVal: true,
                    child: const ListScreen(
                      selectableType: Gender,
                      type: FormListType.staticList,
                      title: "Workplace Type",
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomFormBuilderDatePicker(
                    name: "date_of_birth",
                    labelText: "Date of Birth",
                    controller: _emailController,
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
                        flex: 1,
                        child: UserTypeSelector(
                          isSelected: state.userType == UserType.candidate,
                          bodycolor: Theme.of(context).colorScheme.onSecondaryContainer,
                          elevation: Styles.elevation3,
                          imagePath: 'assets/images/candidate.png',
                          text: 'Candidate',
                          onTap: () {
                            formState!.save();
                            registrationCubit.updateUsertype(usertype: UserType.candidate);
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 1,
                        child: UserTypeSelector(
                          isSelected: state.userType == UserType.recruiter,
                          bodycolor: Theme.of(context).colorScheme.onSecondaryContainer,
                          elevation: Styles.elevation3,
                          imagePath: 'assets/images/recruiter.png',
                          text: 'Recruiter',
                          onTap: () {
                            formState!.save();
                            registrationCubit.updateUsertype(usertype: UserType.recruiter);
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 48,
                    child: CustomElevatedButton(
                      buttonText: 'CONTINUE',
                      isLoading: state is RegistrationScreenLoading,
                      onPressed: () async {
                        if (FormBuilder.of(context)!.saveAndValidate()) {
                          Map<String, dynamic> completeRegistrationData = Map<String, dynamic>.from(formState!.value);
                          completeRegistrationData['user_type'] = state.userType.index;
                          completeRegistrationData['gender'] = 1;
                          completeRegistrationData['is_onboarded'] = false;
                          FlowView.of(context).setIsLoading(true);
                          registrationCubit.register(
                              userData: completeRegistrationData,
                              onRegistered: () {
                                FlowView.of(context).setIsLoading(false);
                                BlocProvider.of<UnauthWrapperBloc>(context).add(NavigateToEmailVerificationScreen(email: completeRegistrationData['email']));
                              });
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
