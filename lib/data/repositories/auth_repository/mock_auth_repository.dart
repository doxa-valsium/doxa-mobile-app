import 'dart:developer';

import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:logger/logger.dart';

import '../../../logger.dart';

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
  Future<String> signInWithEmailAndPassword({required String email, required String password}) async {
    //return Future.delayed(kMockFutureDelay, () => 'attempting log in');
    logger.log(Level.debug, 'attempting log in');
    await Future.delayed(const Duration(seconds: 2));
    logger.log(Level.debug, 'logged in');
    return 'abc';
  }

  @override
  Future<void> signOut() async {
    await Future.delayed(kMockFutureDelay);
  }

  @override
  Future<void> signUpWithEmailAndPassword({required String email, required String password}) async {
    await Future.delayed(kMockFutureDelay);
  }

  @override
  Future<String> confirmSignUp({required String email, required String confirmationCode}) async {
    await Future.delayed(kMockFutureDelay);
    return 'abc';
  }

  @override
  Future<String> attemptAutoLogin() async {
    await Future.delayed(kMockFutureDelay);
    throw Exception('not signed in ');
  }
}
