import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_cubit.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_view/confirm_screen/confirm_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_view/login_screen/login_screen.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_view/signup_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthNavigatorScreen extends StatelessWidget {
  static const String route = 'auth-screen';

  const AuthNavigatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Navigator(
          pages: [
            //show login
            if (state == AuthState.login) MaterialPage(child: LoginScreen()),
            if (state == AuthState.signUp || state == AuthState.confirmSignUp) ...[
              // Show Sign up
              MaterialPage(child: SignupScreen()),

              // Show confirm sign up
              if (state == AuthState.confirmSignUp) MaterialPage(child: ConfirmScreen())
            ]
          ],
          onPopPage: (route, result) => route.didPop(result),
        );
      },
    );
  }
}
