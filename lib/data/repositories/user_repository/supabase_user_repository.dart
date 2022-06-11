import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/mock_database/mock_database.dart' as mockdatabase;
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/models/user.dart';

class SupabaseUserRepository extends UserRepository {
  @override
  User getUser() {
    final user = supabase.auth.currentUser;
    if (user == null) return User.empty;
    return mockdatabase.users[4];
  }
}
