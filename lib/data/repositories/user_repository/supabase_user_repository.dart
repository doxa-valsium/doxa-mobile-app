import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/gender_repository/gender_repository.dart';
import 'package:doxa_mobile_app/data/repositories/gender_repository/supabase_gender_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_type_repository/supabase_user_type_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_type_repository/user_type_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/user.dart' as local_user;
import 'package:supabase_flutter/supabase_flutter.dart' as supabase_user;

class SupabaseUserRepository extends UserRepository {
  final GenderRepository genderRepository = SupabaseGenderRepository();
  final UserTypeRepository userTypeRepository = SupabaseUserTypeRepository();

  @override
  Future<local_user.User> getUser() async {
    final supabase_user.User? user = supabase.auth.currentUser;
    if (user == null) return local_user.User.empty;
    final local_user.User? modelUser = await _fromSupabaseUserToModelUser(user);
    return modelUser ?? local_user.User.empty;
  }


  Future<local_user.User?> _fromSupabaseUserToModelUser(supabase_user.User user) async {
    final String uuid = user.id;
    final response = await supabase.from('users').select('*').eq('users.uuid', uuid).limit(1).execute();

    if (response.error != null) {
      logger.i(response.error);
    } else {
      final userGender = await genderRepository.getGenderFromId(id: response.data['gender']);
      final userType = await userTypeRepository.getUserTypeFromId(id: response.data['user_type']);

      logger.i("Got User Data from Database!");

      local_user.User user = local_user.User(
          userId: uuid,
          email: response.data['email'],
          firstName: response.data['first_name'],
          lastName: response.data['last_name'],
          isOnboarded: response.data['isOnBoarded'],
          userType: userType!,
          isVerified: response.data['isVerified'],
          gender: userGender!,
          dateOfBirth: DateTime(response.data['date_of_birth']));

      return user;
    }
    return null;
  }

  @override
  Future<void> addUserToDatabase({required Map<String, dynamic> user, required String uuid}) async {
    user['uuid'] = uuid;
    final response = await supabase.from('users').insert([user]).execute();
    if (response.error != null) {
      logger.i(response.error);
    } else {
      logger.i("User Added to Database Sucessfully!");
    }
  }
}
