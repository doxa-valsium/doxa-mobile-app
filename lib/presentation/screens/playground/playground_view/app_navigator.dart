import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_cubit.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/session_cubit.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/session_state.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_view/auth_navigator.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_view/loading_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_view/session_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppNavigatorScreen extends StatelessWidget {
  static const String route = 'app-nav-screen';

  const AppNavigatorScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(builder: (context, state) {
      return Navigator(
        pages: [
          // Show loading screen
          if (state is UnknownSessionState) const MaterialPage(child: LoadingScreen()),

          // Show auth flow
          if (state is Unauthenticated)
            MaterialPage(
              child: BlocProvider(
                create: (context) => AuthCubit(
                  sessionCubit: context.read<SessionCubit>(),
                ),
                child: const AuthNavigatorScreen(),
              ),
            ),

          // Show session flow
          if (state is Authenticated)
            MaterialPage(
                child: SessionScreen(
              username: state.user?.username,
            ))
        ],
        onPopPage: (route, result) => route.didPop(result),
      );
    });
  }
}
