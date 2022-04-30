abstract class AuthRepository {
  Future<String?> signInWithEmailAndPassword({required String email, required String password});
  Future<void> signOut();
  Future<bool> signUpWithEmailAndPassword({required username, required String email, required String password});
  bool isSignedIn();
  Future<String> getUser();
  Future<bool> confirmSignUp({required String email, required String confirmationCode});
  Future<String?> attemptAutoLogin();
}
