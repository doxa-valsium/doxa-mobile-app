
import 'package:doxa_mobile_app/models/models.dart';

abstract class UserRepository {
  Future<User> getUser();
}
