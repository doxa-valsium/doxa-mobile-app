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
  Future<String> signInWithEmailAndPassword({required String email, required String password}) {
    return Future.delayed(kMockFutureDelay, () => 'abc');
  }

  @override
  Future<void> signOut() {
    return Future.delayed(kMockFutureDelay, () => null);
  }

  @override
  Future<void> signUpWithEmailAndPassword({required String email, required String password}) {
    return Future.delayed(kMockFutureDelay, () => null);
  }

  @override
  Future<String> confirmSignUp({required String email, required String confirmationCode}) {
    return Future.delayed(kMockFutureDelay, () => 'abc');
  }

  @override
  Future<String> attemptAutoLogin() {
    // TODO: implement attemptAutoLogin
    throw UnimplementedError();
  }
}
