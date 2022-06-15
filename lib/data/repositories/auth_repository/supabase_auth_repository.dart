import 'dart:async';
import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:supabase/supabase.dart' as supabase_root;
import 'package:supabase/supabase.dart';

class SupabaseAuthRepository extends AuthRepository {
  final _controller = StreamController<AuthenticationStatus>();

  SupabaseAuthRepository() {
     supabase.auth.onAuthStateChange((event, session) {
      if (event == AuthChangeEvent.signedIn) {
        _controller.add(AuthenticationStatus.authenticated);
      } else if (event == AuthChangeEvent.signedOut) {
        _controller.add(AuthenticationStatus.unauthenticated);
      }
    });
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
      logger.i('User Logged In successfully');
    }
  }

  @override
  Future<void> signOut() async {
    final response = await supabase.auth.signOut();
    if (response.error != null) {
      logger.e(response.error!.message);
    } else {
      logger.i('User Signed out successfully');
    }
  }

  @override
  Future<String?> signUpWithEmailAndPassword(String email, String password) async {
    final response = await supabase.auth.signUp(email, password, options: supabase_root.AuthOptions(redirectTo: signUpAuthRedirectUri));
    if (response.error != null) {
      logger.e(response.error!.message);
    } else {
      logger.i('Verification Email Sent Sucessfully!');
      return response.user!.id;
    }
    return null;
  }

  @override
  Future<bool> userAlreadyExists({required String email}) async {
    final response = await supabase.rpc('is_user_exists', params: {'test_email': email}).execute();
    if (response.error != null) {
      logger.e(response.error!.message);
    } else {
      logger.i(response.data);
    }
    return response.data;
  }

  @override
  Stream<AuthenticationStatus> get status async* {
    final signedIn = isSignedIn();
    if (signedIn) {
      _controller.add(AuthenticationStatus.authenticated);
    } else {
      _controller.add(AuthenticationStatus.unauthenticated);
    }
    yield* _controller.stream;
  }

  @override
  void dispose() => _controller.close();

  @override
  Future<void> signInWithRefreshToken(Uri uri) async {
    final response = await supabase.auth.getSessionFromUrl(uri);
    if (response.error != null) {
      logger.e(response.error!.message);
    } else {
      logger.i('Signed In using Token Sucessfully!');
    }
  }
}
