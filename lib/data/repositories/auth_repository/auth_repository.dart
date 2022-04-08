abstract class AuthRepository {
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  Future<void> signUpWithEmailAndPassword(String email, String password);
  bool isSignedIn();
  Future<String> getUser();
}

