import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/mock_database/mock_database.dart' as mockdatabase;
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/models/models.dart';
import 'package:doxa_mobile_app/models/user.dart';

class MockUserRepository implements UserRepository {
  @override
  Future<User> getUser() async {
    await Future.delayed(kMockFutureDelay);
    return mockdatabase.users[4];
  }
}
