import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepository {
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  Future<void> signUpWithEmailAndPassword(String email, String password);
  bool isSignedIn();
  User? getUser();
}

