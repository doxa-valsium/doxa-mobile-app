
import 'package:doxa_mobile_app/models/models.dart';

abstract class UserRepository {
  Future<User?> getUser();
  Future<void> addUserToDatabase({required Map<String, dynamic> user, required String uuid});
}
