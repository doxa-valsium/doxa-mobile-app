import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/user_type_repository/user_type_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/user.dart';

class SupabaseUserTypeRepository implements UserTypeRepository {
  @override
  Future<UserType?> getUserTypeFromId({required String id}) async {
    final response = await supabase.from('user_types').select('id, name').eq('id', id).limit(1).execute();
    if (response.error != null) {
      logger.e(response.error);
    } else {
      logger.i("Received UserType Value Successfully");
      if (response.data[1] == 'candidate') {
        return UserType.candidate;
      } else if (response.data[1] == 'recruiter') {
        return UserType.recruiter;
      }
    }
      return null;
  }

  @override
  Future<UserType?> getUserTypeFromLabel({required String label}) async {
      final response = await supabase.from('user_types').select('id, name').eq('name', label).limit(1).execute();
    if (response.error != null) {
      logger.e(response.error);
    } else {
      logger.i("Received UserType Value Successfully");
      if (response.data[1] == 'candidate') {
        return UserType.candidate;
      } else if (response.data[1] == 'recruiter') {
        return UserType.recruiter;
      }
    }
    return null;
  }
}
