import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseAuthRepository extends AuthRepository {
  @override
  User? getUser() {
    final user = Supabase.instance.client.auth.currentUser;
    return user;
  }

  @override
  bool isSignedIn() {
    final response = Supabase.instance.client.auth.currentUser;
    if (response == null) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    final response = await Supabase.instance.client.auth.signIn(email: email, password: password);
    if (response.error != null) {
      logger.e(response.error!.message);
    } else {
      return logger.i('User created successfully');
    }
  }

  @override
  Future<void> signOut() async {
    final response = await Supabase.instance.client.auth.signOut();
    if (response.error != null) {
      logger.e(response.error!.message);
    } else {
      return logger.i('User Ssgned out successfully');
    }
  }

  @override
  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    final response = await Supabase.instance.client.auth.signUp(email, password);
    if (response.error != null) {
      logger.e(response.error!.message);
    } else {
      return logger.i('User created successfully');
    }
  }
}
