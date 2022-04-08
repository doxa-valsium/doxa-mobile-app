import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';

class AmplifyAuthRepository implements AuthRepository {
  @override
  Future<String> getUser() {
    return Future.delayed(kMockFutureDelay, () => 'buddy');
  }

  @override
  bool isSignedIn() {
    return true;
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) {
    return Future.delayed(kMockFutureDelay, () => null);
  }

  @override
  Future<void> signOut() {
    return Future.delayed(kMockFutureDelay, () => null);
  }

  @override
  Future<void> signUpWithEmailAndPassword(String email, String password) {
    return Future.delayed(kMockFutureDelay, () => null);
  }
}
