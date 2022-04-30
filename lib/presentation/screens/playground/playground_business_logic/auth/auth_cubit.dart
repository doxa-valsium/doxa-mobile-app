import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_crendentials.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/session_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//1. responsible for navigation and hanging on the crendiatls
enum AuthState { login, signUp, confirmSignUp }

class AuthCubit extends Cubit<AuthState> {
  final SessionCubit? sessionCubit;

  AuthCubit({this.sessionCubit}) : super(AuthState.login);

  late AuthCredentials authCrendentials;
  void showLogin() => emit(AuthState.login);
  void showLSignUp() => emit(AuthState.signUp);
  void showConfirmSignUp({
    required String username,
    required String email,
    required String password,
  }) {
    authCrendentials = AuthCredentials(
      username: username,
      email: email,
      password: password,
    );
    emit(AuthState.confirmSignUp);
  }

  void launchSession(AuthCredentials credentials) {
    sessionCubit!.showSession(credentials);
  }
}
