import 'dart:async';

import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/services/deep_link_service.dart';
import 'package:supabase/supabase.dart' as supabase_root;
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthRepository extends AuthRepository {
  final _controller = StreamController<AuthenticationStatus>();
  StreamSubscription? _sub;

  @override
  User? getUser() {
    final user = supabase.auth.currentUser;
    return user;
  }

  @override
  bool isSignedIn() {
    final response = supabase.auth.currentUser;
    if (response == null) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    final response = await supabase.auth.signIn(email: email, password: password, options: supabase_root.AuthOptions(redirectTo: signUpAuthRedirectUri));
    if (response.error != null) {
      logger.e(response.error!.message);
    } else {
      _controller.add(AuthenticationStatus.authenticated);
      logger.i('User Logged In successfully');
    }
  }

  @override
  Future<void> signOut() async {
    final response = await supabase.auth.signOut();
    if (response.error != null) {
      logger.e(response.error!.message);
    } else {
      _controller.add(AuthenticationStatus.unauthenticated);
      logger.i('User Signed out successfully');
    }
  }

  @override
  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    final response = await supabase.auth.signUp(email, password, options: supabase_root.AuthOptions(redirectTo: signUpAuthRedirectUri));
    if (response.error != null) {
      logger.e(response.error!.message);
    } else {
      logger.i('Verification Email Sent Sucessfully!');
    }
  }

  @override
  Stream<AuthenticationStatus> get status async* {
    final user = getUser();
    if (user == null) {
      yield AuthenticationStatus.unauthenticated;
    } else {
      yield AuthenticationStatus.authenticated;
    }
    yield* _controller.stream;
  }

  @override
  void dispose() => _controller.close();

  @override
  Future<void> signInWithRefreshToken(Uri url) async {
    final response = await supabase.auth.getSessionFromUrl(url);
    if (response.error != null) {
      logger.e(response.error!.message);
    } else {
      logger.i('Signed In using Token Sucessfully!');
      _controller.add(AuthenticationStatus.authenticated);

    }
  }
}
