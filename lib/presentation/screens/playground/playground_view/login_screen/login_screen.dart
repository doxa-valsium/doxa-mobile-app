import 'package:doxa_mobile_app/data/repositories/auth_repository/mock_auth_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_cubit.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/form_submission_status..dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/login/login_bloc.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/login/login_event.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  static const String route = 'login-screen';
  final _formKey = GlobalKey<FormState>();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginBloc(
          authRepository: context.read<MockAuthRepository>(),
          authCubit: context.read<AuthCubit>(),
        ),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  final formStatus = state.formStatus;
                  if (formStatus is SubmissionFailed) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(formStatus.exception.toString())));
                  }
                },
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        obscureText: false,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'First Name',
                        ),
                        validator: (value) => state.isValidFirstName ? null : 'enter correct first name',
                        onChanged: (value) => context.read<LoginBloc>().add(
                              LoginFirstNameChanged(firstName: value),
                            ),
                      ),
                      TextFormField(
                        obscureText: false,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Last Name',
                        ),
                        validator: (value) => state.isValidLastName ? null : 'enter correct lastName',
                        onChanged: (value) => context.read<LoginBloc>().add(
                              LoginLastNameChanged(lastName: value),
                            ),
                      ),
                      TextFormField(
                        obscureText: false,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: 'Email',
                        ),
                        validator: (value) => state.isValidEmail ? null : 'enter correct email',
                        onChanged: (value) => context.read<LoginBloc>().add(
                              LoginEmailChanged(email: value),
                            ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.security),
                          hintText: 'Password',
                        ),
                        validator: (value) => state.isValidPassword ? null : 'enter correct password',
                        onChanged: (value) => context.read<LoginBloc>().add(
                              LoginPasswordChanged(password: value),
                            ),
                      ),
                      (state.formStatus is FormSubmitting)
                          ? const CircularProgressIndicator()
                          : ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<LoginBloc>().add(LoginSubmitted());
                                }
                              },
                              child: const Text('Login'),
                            ),
                      SizedBox(height: 20.0),
                      TextButton(
                        onPressed: () {
                          context.read<AuthCubit>().showLSignUp();
                        },
                        child: Text('dont have an account ? Singup..'),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
