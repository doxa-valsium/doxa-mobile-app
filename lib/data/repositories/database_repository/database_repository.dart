import '../../../models/User.dart';

abstract class DatabaseRepositry {
  Future<User?> getUserById({String userId});
  Future<User?> createUser({required String userId, required String username, String email});
}
