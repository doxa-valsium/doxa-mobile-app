import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/amplify_auth_repository.dart';
import 'package:doxa_mobile_app/data/repositories/database_repository/amplify_database_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_crendentials.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/session_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../models/User.dart';

class SessionCubit extends Cubit<SessionState> {
  final AmplifyAuthRepository? authRepository;
  final AmplifyDatabaseRepository databaseRepository;

  SessionCubit({required this.authRepository, required this.databaseRepository}) : super(UnknownSessionState()) {
    attemptAutoLogin();
  }

  void attemptAutoLogin() async {
    try {
      final userId = await authRepository?.attemptAutoLogin();
      if (userId == null) {
        throw Exception('User not logged in');
      }
      User? user = await databaseRepository.getUserById(userId: userId);
      // ignore: prefer_conditional_assignment
      if (user == null) {
        user = await databaseRepository.createUser(userId: userId, username: 'User-${UUID()}');
      }

      emit(Authenticated(user: user));
    } on Exception {
      emit(Unauthenticated());
    }
  }

  void showAuth() => emit(Unauthenticated());
  void showSession(AuthCredentials credentials) async {
    try {
      User? user = await databaseRepository.getUserById(userId: credentials.userId);

      // ignore: prefer_conditional_assignment
      if (user == null) {
        user = await databaseRepository.createUser(
          userId: credentials.userId,
          username: credentials.username,
          email: credentials.email,
        );
      }
      emit(Authenticated(user: user));
    } catch (e) {
      emit(Unauthenticated());
    }
  }

  void signOut() {
    authRepository!.signOut();
    emit(Unauthenticated());
  }
}
