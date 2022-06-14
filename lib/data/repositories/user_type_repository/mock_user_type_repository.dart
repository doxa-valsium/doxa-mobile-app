import 'package:doxa_mobile_app/data/repositories/user_type_repository/user_type_repository.dart';
import 'package:doxa_mobile_app/models/user.dart';

class MockUserTypeRepository implements UserTypeRepository {
  
  @override
  Future<UserType> getUserTypeFromId({required String id}) async {
    Future.delayed(const Duration(milliseconds: 500));
    return UserType.candidate;
  }

  @override
  Future<UserType> getUserTypeFromLabel({required String label}) async {
    Future.delayed(const Duration(milliseconds: 500));
    return UserType.candidate;
  }
}
