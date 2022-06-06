import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';

class MockAuthRepository implements AuthRepository {
  @override
  Future<String> getUser() {
    return Future.delayed(kMockFutureDelay, () => 'abuzar');
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

  @override
  String? attemptAutoLogin() {
    // TODO: implement attemptAutoLogin
    throw UnimplementedError();
  }

  @override
  String? getLoggedInUser() {
    // TODO: implement getLoggedInUser
    throw UnimplementedError();
  }

  @override
  Future getLoggedInUserSession() {
    // TODO: implement getLoggedInUserSession
    throw UnimplementedError();
  }

  @override
  Future signIn({required String email, required String password}) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<String> signUp({required String email, required String password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
