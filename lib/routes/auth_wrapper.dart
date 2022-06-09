import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/business_logic/blocs/auth_bloc/auth.state.dart';
import 'package:doxa_mobile_app/business_logic/blocs/auth_bloc/auth_bloc.dart';
import 'package:doxa_mobile_app/business_logic/blocs/auth_bloc/auth_event.dart';
import 'package:doxa_mobile_app/business_logic/cubits/unauth_wrapper/unauth_wrapper_cubit.dart';
import 'package:doxa_mobile_app/business_logic/cubits/unauth_wrapper/unauth_wrapper_state.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UnAuthWrapperScreen extends StatelessWidget {
  const UnAuthWrapperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UnAuthWrapperCubit>(
      create: (context) => UnAuthWrapperCubit(authRepository: RepositoryProvider.of<AuthRepository>(context)),
      child: BlocConsumer<UnAuthWrapperCubit, UnAuthWrapperState>(
        listener: (context, state) {
          if (state is UnAuthWrapperError) {
            logger.d(state.errorMessage);
          }
        },
        buildWhen: (previous, current) => current is! UnAuthWrapperError,
        builder: (context, state) {
          return AutoRouter.declarative(routes: (_) {
            return [
              if (state is OnLoginScreen)
                LoginRoute()
              else if (state is OnRegistrationScreen) ...[RegistrationRoute(), if (state.registrationData.isNotEmpty) BasicInfoRoute(registrationData: state.registrationData)]
            ];
          });
        },
      ),
    );
  }
}
