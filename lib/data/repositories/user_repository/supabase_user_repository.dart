import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:doxa_mobile_app/models/user.dart' as local_user;
import 'package:supabase_flutter/supabase_flutter.dart' as supabase_user;

class SupabaseUserRepository extends UserRepository {
  @override
  Future<local_user.User?> getUser() async {
    final supabase_user.User? user = supabase.auth.currentUser;
    if (user == null) return null;
    final local_user.User? modelUser = await _fromSupabaseUserToModelUser(user);
    return modelUser;
  }

  @override
  Future<void> createNewUser({required Map<String, dynamic> user, required String uuid}) async {
    user['uuid'] = uuid;
    final response = await supabase.from('users').insert([user]).execute();
    if (response.error != null) {
      logger.i(response.error);
    } else {
      logger.i("User Added to Database Sucessfully!");
    }
  }

  Future<local_user.User?> _fromSupabaseUserToModelUser(supabase_user.User user) async {
    final String uuid = user.id;

    final response = await supabase.rpc('get_user', params: {'uuid': uuid}).execute();

    if (response.error != null) {
      logger.i(response.error);
    } else {
      logger.i("Got User Data from Database!");
      logger.i(response.data);

      List<String> dateOfBirthParts = response.data[0]['date_of_birth'].toString().split('-');
      DateTime dateOfBirth = DateTime(int.parse(dateOfBirthParts[0]), int.parse(dateOfBirthParts[1]), int.parse(dateOfBirthParts[2]));

      local_user.User user = local_user.User(
          userId: uuid,
          email: response.data[0]['email'],
          firstName: response.data[0]['first_name'],
          lastName: response.data[0]['last_name'],
          isOnboarded: response.data[0]['is_onboarded'],
          userType: response.data[0]['user_type'] == 'candidate' ? local_user.UserType.candidate : local_user.UserType.recruiter,
          gender: Gender(label: response.data[0]['gender']),
          dateOfBirth: dateOfBirth);

      return user;
    }
    return null;
  }
}
