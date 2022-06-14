import 'package:supabase_flutter/supabase_flutter.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

abstract class AuthRepository {
  Stream<AuthenticationStatus> get status;
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  Future<String?> signUpWithEmailAndPassword(String email, String password);
  Future<void> signInWithRefreshToken(Uri uri);
  Future<bool> userAlreadyExists({required String email});
  bool isSignedIn();
  void dispose();
}
