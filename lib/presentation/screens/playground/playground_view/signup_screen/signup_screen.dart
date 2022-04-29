import 'package:doxa_mobile_app/data/repositories/auth_repository/mock_auth_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_cubit.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/form_submission_status..dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/signup/signup_bloc.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/signup/signup_event.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/signup/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  static const String route = 'signup-screen';

  SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignUpBloc(
          authRepository: context.read<MockAuthRepository>(),
          authCubit: context.read<AuthCubit>(),
        ),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: BlocConsumer<SignUpBloc, SignUpState>(
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
                          hintText: 'Username',
                        ),
                        validator: (value) => state.isValidUsername ? null : 'enter correct user name',
                        onChanged: (value) => context.read<SignUpBloc>().add(
                              SignUpUsernameChanged(username: value),
                            ),
                      ),
                      TextFormField(
                        obscureText: false,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: 'Email',
                        ),
                        validator: (value) => state.isValidEmail ? null : 'enter correct email',
                        onChanged: (value) => context.read<SignUpBloc>().add(
                              SignUpEmailChanged(email: value),
                            ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          icon: Icon(Icons.security),
                          hintText: 'Password',
                        ),
                        validator: (value) => state.isValidPassword ? null : 'enter correct password',
                        onChanged: (value) => context.read<SignUpBloc>().add(
                              SignUpPasswordChanged(password: value),
                            ),
                      ),
                      (state.formStatus is FormSubmitting)
                          ? const CircularProgressIndicator()
                          : ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<SignUpBloc>().add(SignUpSubmitted());
                                }
                              },
                              child: const Text('SignUp'),
                            ),
                      SizedBox(height: 20.0),
                      TextButton(
                        onPressed: () {
                          context.read<AuthCubit>().showLogin();
                        },
                        child: Text('already have an account ? Login..'),
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
