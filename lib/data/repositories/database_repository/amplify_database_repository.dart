// ignore_for_file: use_rethrow_when_possible

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:doxa_mobile_app/data/repositories/database_repository/database_repository.dart';
import 'package:doxa_mobile_app/models/User.dart';

class AmplifyDatabaseRepository implements DatabaseRepositry {
  @override
  Future<User?> getUserById({String? userId}) async {
    try {
      final users = await Amplify.DataStore.query(
        User.classType,
        where: User.ID.eq(userId),
      );
      return users.isNotEmpty ? users.first : null;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<User?> createUser({required String? userId, required String? username, String? email}) async {
    final newUser = User(id: userId, username: username, email: email);
    try {
      await Amplify.DataStore.save(newUser);
    } catch (e) {
      throw e;
    }
    return null;
  }
}
