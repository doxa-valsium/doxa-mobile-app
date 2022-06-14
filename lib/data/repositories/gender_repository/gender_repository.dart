import 'package:doxa_mobile_app/models/models.dart';

abstract class GenderRepository {
  Future<Gender?> getGenderFromId({required String id});
  Future<Gender?> getGenderFromLabel({required String label});
}
