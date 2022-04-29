abstract class AuthRepository {
  Future<String> signInWithEmailAndPassword({required String email, required String password});
  Future<void> signOut();
  Future<void> signUpWithEmailAndPassword({required String email, required String password});
  bool isSignedIn();
  Future<String> getUser();
  Future<String> confirmSignUp({required String email, required String confirmationCode});
  Future<String> attemptAutoLogin();
}
