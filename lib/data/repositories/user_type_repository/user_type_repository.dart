import 'package:doxa_mobile_app/models/models.dart';

abstract class UserTypeRepository {
  Future<UserType?> getUserTypeFromId({required String id});
  Future<UserType?> getUserTypeFromLabel({required String label});
}
