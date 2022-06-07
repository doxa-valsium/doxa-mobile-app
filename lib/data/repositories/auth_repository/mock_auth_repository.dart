import 'dart:async';
import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';

class MockAuthRepository implements AuthRepository {
  final _controller = StreamController<AuthenticationStatus>();

  @override
  bool isSignedIn() {
    return false;
  }

  @override
  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await Future.delayed(kMockFutureDelay);
    _controller.add(AuthenticationStatus.authenticated);
  }

  @override
  Future<void> signOut() {
    return Future.delayed(kMockFutureDelay, () => _controller.add(AuthenticationStatus.unauthenticated));
  }

  @override
  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    await Future.delayed(kMockFutureDelay);
    _controller.add(AuthenticationStatus.authenticated);
  }

  @override
  Stream<AuthenticationStatus> get status async* {
    await Future.delayed(kMockFutureDelay);
    yield AuthenticationStatus.authenticated;
    yield* _controller.stream;
  }

  @override
  void dispose() => _controller.close();
}
