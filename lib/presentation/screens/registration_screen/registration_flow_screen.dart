import 'package:doxa_mobile_app/business_logic/cubits/registration_screen/registration_screen_cubit.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/registration_screen/registration_flow_screen_one.dart';
import 'package:doxa_mobile_app/presentation/screens/registration_screen/registration_flow_screen_two.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_screen.dart';
import 'package:doxa_mobile_app/presentation/widgets/flow_view/flow_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RegistrationFlowScreen extends StatelessWidget {
  static const String route = 'registration-flow-screen';
  final _registrationFormKey = GlobalKey<FormBuilderState>();
  RegistrationFlowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => RegistrationScreenCubit(authRepository: RepositoryProvider.of<AuthRepository>(context), formKey: _registrationFormKey),
          child: FormBuilder(
            key: _registrationFormKey,
            child: FlowView(
              steps: [
                FlowScreen.builder((context, state) => RegistrationFlowScreenOne()),
                FlowScreen.builder((context, state) => RegistrationFlowScreenTwo()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
