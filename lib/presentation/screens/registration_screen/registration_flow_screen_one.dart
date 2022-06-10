import 'package:doxa_mobile_app/business_logic/blocs/unauth_wrapper/unauth_wrapper_bloc.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/widgets/dashed_button.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class RegistrationFlowScreenOne extends StatelessWidget {
  RegistrationFlowScreenOne({Key? key}) : super(key: key);
  final _registrationFormKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final unauthWrapperBloc = BlocProvider.of<UnauthWrapperBloc>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: FormBuilder(
            key: _registrationFormKey,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/final_logo.png',
                      height: 84,
                    ),
                  ),
                  const SizedBox(
                    height: 48 / 2,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/registration_screen.png',
                      height: 248,
                    ),
                  ),
                  const SizedBox(
                    height: 52,
                  ),
                  Text("Register", style: Theme.of(context).textTheme.headline5, textAlign: TextAlign.left),
                  const SizedBox(
                    height: 28 / 4,
                  ),
                  CustomFormBuilderTextField(
                    formKey: _registrationFormKey,
                    focusNode: FocusNode(),
                    name: "registration_email",
                    controller: TextEditingController(),
                    keyboardType: TextInputType.emailAddress,
                    labelText: "Email Address",
                    prefixIcon: const Icon(Icons.alternate_email),
                    validators: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.email(),
                    ]),
                  ),
                  const SizedBox(height: 16 / 2),
                  CustomFormBuilderTextField(
                    formKey: _registrationFormKey,
                    focusNode: FocusNode(),
                    name: "registration_password",
                    controller: TextEditingController(),
                    keyboardType: TextInputType.visiblePassword,
                    labelText: "Password",
                    isPassword: true,
                    prefixIcon: const Icon(Icons.lock),
                    validators: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(8),
                    ]),
                  ),
                  const SizedBox(
                    height: 24 / 2,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50.0,
                    child: ElevatedButton(
                      child: Text(
                        'REGISTER',
                        style: Theme.of(context).textTheme.button?.copyWith(color: Colors.white),
                      ),
                      onPressed: () {
                        if (_registrationFormKey.currentState!.saveAndValidate()) {
                          logger.i('Form is valid');
                          final String email = _registrationFormKey.currentState!.value['registration_email'];
                          final String password = _registrationFormKey.currentState!.value['registration_password'];
                          FlowView.of(context).next();
                        }
                      },
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 12, 0, 8),
                      child: Text(
                        "Or if you're already a member",
                        style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                      ),
                    ),
                  ),
                  DashedButton(
                      borderRadius: 16,
                      buttonText: "LOGIN IN",
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                      onPressed: () {
                        unauthWrapperBloc.add(NavigateToLogin());
                      },
                      dashLineRadius: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}