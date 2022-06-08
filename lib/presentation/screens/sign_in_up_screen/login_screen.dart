import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/business_logic/cubits/login_cubit/login_cubit.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/screens/sign_in_up_screen/local_widgets/dashed_button.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_elevated_button.dart';
import 'package:doxa_mobile_app/presentation/widgets/custom_formbuilder_textfield.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class LoginScreen extends StatelessWidget {
  static const String route = 'login-route';
  final _loginFormKey = GlobalKey<FormBuilderState>();
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(authRepository: context.read<AuthRepository>()),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: FormBuilder(
                  key: _loginFormKey,
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(child: Image.asset('assets/images/final_logo.png')),
                        const SizedBox(
                          height: 48 / 2,
                        ),
                        Center(child: Image.asset('assets/images/login_screen.png')),
                        const SizedBox(
                          height: 56 / 4,
                        ),
                        const SizedBox(
                          height: 56,
                        ),
                        Text("Login", style: Theme.of(context).textTheme.headline5, textAlign: TextAlign.left),
                        const SizedBox(
                          height: 28 / 4,
                        ),
                        CustomFormBuilderTextField(
                          formKey: _loginFormKey,
                          focusNode: FocusNode(),
                          name: "login_email",
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
                          formKey: _loginFormKey,
                          focusNode: FocusNode(),
                          name: "login_password",
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
                          height: 28,
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          height: 50.0,
                          child: CustomElevatedButton(
                            buttonText: 'LOGIN',
                            isLoading: state.loginStatus == LoginStatus.loading,
                            onPressed: () async {
                              if (_loginFormKey.currentState!.saveAndValidate()) {
                                logger.i('Form is valid');
                                context.read<LoginCubit>().login(
                                      email: _loginFormKey.currentState!.value['login_email'],
                                      password: _loginFormKey.currentState!.value['login_password'],
                                    );
                              }
                            },
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "Or if you are new here",
                              style: Theme.of(context).textTheme.bodyText2?.copyWith(color: Theme.of(context).colorScheme.surfaceVariant),
                            ),
                          ),
                        ),
                        DashedButton(
                          borderRadius: 16,
                          buttonText: "SIGN UP",
                          color: Theme.of(context).colorScheme.onSecondaryContainer,
                          onPressed: () {
                            context.router.push(RegistrationRoute());
                          },
                          dashLineRadius: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
