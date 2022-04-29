import 'package:doxa_mobile_app/data/repositories/auth_repository/mock_auth_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_crendentials.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/session_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SessionCubit extends Cubit<SessionState> {
  final MockAuthRepository? authRepository;

  SessionCubit({this.authRepository}) : super(UnknownSessionState()) {
    attemptAutoLogin();
  }

  void attemptAutoLogin() async {
    try {
      final userId = await authRepository?.attemptAutoLogin();
      // final user = dataRepo.getUser(userId);
      final user = userId;
      emit(Authenticated(user: user));
    } on Exception {
      emit(Unauthenticated());
    }
  }

  void showAuth() => emit(Unauthenticated());
  void showSession(AuthCredentials credentials) {
    // final user = dataRepo.getUser(credentials.userId);
    final user = credentials.username;
    emit(Authenticated(user: user));
  }

  void signOut() {
    authRepository!.signOut();
    emit(Unauthenticated());
  }
}
