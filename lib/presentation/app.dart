import 'package:doxa_mobile_app/data/repositories/auth_repository/mock_auth_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/session_cubit.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/playground/playground_business_logic/auth/auth_cubit.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => MockAuthRepository(),
      child: BlocProvider(
        create: (context) => SessionCubit(
          authRepository: context.read<MockAuthRepository>(),
        ),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: Styles.mainTheme,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ),
      ),
    );
  }
}
