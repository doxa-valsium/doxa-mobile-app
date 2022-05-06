import 'package:doxa_mobile_app/data/repositories/auth_repository/amplify_auth_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_cubit.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/confirm/confirmation_bloc.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/confirm/confirmation_event.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/confirm/confirmation_state.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/form_submission_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmScreen extends StatelessWidget {
  static const String route = 'confirm-screen';
  final _formKey = GlobalKey<FormState>();

  ConfirmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('confirmation code'),
      ),
      body: BlocProvider(
        create: (context) => ConfirmationBloc(
          authRepository: context.read<AmplifyAuthRepository>(),
          authCubit: context.read<AuthCubit>(),
        ),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: BlocConsumer<ConfirmationBloc, ConfirmationState>(
              listener: (context, state) {
                final formStatus = state.formStatus;
                if (formStatus is SubmissionFailed) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(formStatus.exception.toString())));
                }
              },
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Confirmation Code',
                        ),
                        validator: (value) => state.isValidCode ? null : 'Invalid confirmation code',
                        onChanged: (value) => context.read<ConfirmationBloc>().add(
                              ConfirmationCodeChanged(code: value),
                            ),
                      ),
                      state.formStatus is FormSubmitting
                          ? const CircularProgressIndicator()
                          : ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<ConfirmationBloc>().add(ConfirmationSubmitted());
                                }
                              },
                              child: const Text('Confirm'),
                            ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
