import 'dart:async';
import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/exceptions/auth_exception.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:supabase/supabase.dart' as supabase_root;
import 'package:supabase/supabase.dart';

class SupabaseAuthRepository extends AuthRepository {
  final _controller = StreamController<AuthenticationStatus>();

  SupabaseAuthRepository() {
    kSupabase.auth.onAuthStateChange((event, session) {
      if (event == AuthChangeEvent.signedIn) {
        _controller.add(AuthenticationStatus.authenticated);
      } else if (event == AuthChangeEvent.signedOut) {
        _controller.add(AuthenticationStatus.unauthenticated);
      }
    });
  }

  @override
  bool isSignedIn() {
    final response = kSupabase.auth.currentUser;
    if (response == null) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    supabase_root.GotrueSessionResponse response = await kSupabase.auth.signIn(email: email, password: password);
    if (response.error != null) {
      throw AuthException(response.error!.message);
    }
  }

  @override
  Future<void> signOut() async {
    await kSupabase.auth.signOut();
  }

  @override
  Future<String?> signUpWithEmailAndPassword(String email, String password) async {
    final response = await kSupabase.auth.signUp(email, password, options: supabase_root.AuthOptions(redirectTo: kSignUpAuthRedirectUri));
    if (response.error != null) {
      throw AuthException(response.error!.message);
    } else {
      return response.user!.id;
    }
  }

  @override
  Future<bool> userAlreadyExists({required String email}) async {
    final response = await kSupabase.rpc('is_user_exists', params: {'test_email': email}).execute();
    if (response.error != null) {
      throw AuthException(response.error!.message);
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
    final response = await kSupabase.auth.getSessionFromUrl(uri);
    if (response.error != null) {
      throw AuthException(response.error!.message);
    }
  }

  @override
  Future<void> resendVerificationEmail({required String email}) async {
    supabase_root.GotrueSessionResponse response = await kSupabase.auth.signIn(email: email);
    if (response.error != null) {
      throw AuthException(response.error!.message);
    }
  }
}

