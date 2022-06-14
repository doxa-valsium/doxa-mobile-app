import 'package:doxa_mobile_app/data/repositories/gender_repository/gender_repository.dart';
import 'package:doxa_mobile_app/models/selectable.dart';

class MockGenderRepository implements GenderRepository {
  @override
  Future<Gender?> getGenderFromId({required String id}) async {
    Future.delayed(const Duration(milliseconds: 500));
    return Gender(id: id, label: 'male');
  }

  @override
  Future<Gender?> getGenderFromLabel({required String label}) async {
    Future.delayed(const Duration(milliseconds: 500));
    return Gender(id: '2', label: label);
  }
}
