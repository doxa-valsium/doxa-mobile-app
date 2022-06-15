import 'package:auto_route/auto_route.dart';
import 'package:doxa_mobile_app/business_logic/blocs/auth/auth_bloc.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/supabase_auth_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/supabase_user_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/routes/router.gr.dart';
import 'package:doxa_mobile_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/localization/l10n.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final _authRepository = SupabaseAuthRepository();
  final _userRepository = SupabaseUserRepository();
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(
          create: (context) => _authRepository,
        ),
        RepositoryProvider<UserRepository>(
          create: (context) => _userRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(authenticationRepository: _authRepository, userRepository: _userRepository),
          ),
        ],
        child: const MainApp(),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final AppRouter _appRouter = AppRouter();
  // final DeepLinkService _deepLinkService = DeepLinkService();

  @override
  void initState() {
    // _deepLinkService.handleIncomingDeepLinks();
    super.initState();
  }

  @override
  void dispose() {
    // _deepLinkService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthenticationState>(
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: Styles.mainTheme,
          routerDelegate: AutoRouterDelegate.declarative(
            _appRouter,
            routes: (_) => [
              // if the user is logged in, they may proceed to the main App
              if (state.status == AuthenticationStatus.authenticated)
                const AuthWrapperRoute()
              // if they are not logged in, bring them to the Login page
              else if (state.status == AuthenticationStatus.unauthenticated)
                const UnAuthWrapperRoute()
              else
                const SplashRoute(),
            ],
          ),
          routeInformationParser: _appRouter.defaultRouteParser(includePrefixMatches: true),
          localizationsDelegates: const [FormBuilderLocalizations.delegate],
        );
      },
    );
  }
}
