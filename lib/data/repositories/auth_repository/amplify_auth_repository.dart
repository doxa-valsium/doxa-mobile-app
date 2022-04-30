import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';

import '../../../logger.dart';

class AmplifyAuthRepository implements AuthRepository {
  @override
  bool isSignedIn() {
    return true;
  }

  @override
  Future<void> signOut() async {
    await Amplify.Auth.signOut();
  }

  @override
  Future<bool> signUpWithEmailAndPassword({required username, required String email, required String password}) async {
    final options = CognitoSignUpOptions(userAttributes: {CognitoUserAttributeKey.name: username.trim()});
    try {
      final result = await Amplify.Auth.signUp(
        username: email.trim(),
        password: password.trim(),
        options: options,
      );
      return result.isSignUpComplete;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> confirmSignUp({required String email, required String confirmationCode}) async {
    //TODO:checking for email, may have to change it to username.
    try {
      final result = await Amplify.Auth.confirmSignUp(
        username: email.trim(),
        confirmationCode: confirmationCode.trim(),
      );
      return result.isSignUpComplete;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String> getUser() async {
    // getUserIdFromAttrivutes..

    try {
      final attributes = await Amplify.Auth.fetchUserAttributes();
      final userId = attributes.firstWhere((element) => element.userAttributeKey == element.value).value; // ' sub ;
      return userId;
    } catch (e) {
      logger.e('getUser : $e');
      rethrow;
    }
  }

  @override
  Future<String?> attemptAutoLogin() async {
    try {
      final session = await Amplify.Auth.fetchAuthSession(); // checks if the user is signed in or not

      return session.isSignedIn ? (await getUser()) : null;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> signInWithEmailAndPassword({required String email, required String password}) async {
    try {
      final result = await Amplify.Auth.signIn(
        username: email.trim(),
        password: password.trim(),
      );

      return result.isSignedIn ? (await getUser()) : null;
    } catch (e) {
      logger.e('2 : $e');

      rethrow;
    }
  }
}
