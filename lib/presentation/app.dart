import 'package:doxa_mobile_app/data/repositories/auth_repository/amplify_auth_repository.dart';
import 'package:doxa_mobile_app/data/repositories/database_repository/amplify_database_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/session_cubit.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => AmplifyAuthRepository()),
        RepositoryProvider(create: (context) => AmplifyDatabaseRepository()),
      ],
      child: BlocProvider(
        create: (context) => SessionCubit(
          authRepository: context.read<AmplifyAuthRepository>(),
          databaseRepository: context.read<AmplifyDatabaseRepository>(),
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
