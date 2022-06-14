import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/gender_repository/gender_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/selectable.dart';

class SupabaseGenderRepository implements GenderRepository {

  @override
  Future<Gender?> getGenderFromId({required String id}) async {
    final response = await supabase.from('genders').select('id, name').eq('id', id).limit(1).execute();
    if (response.error != null) {
      logger.e(response.error);
    } else {
      logger.i("Received Gender Value Successfully");
      final Gender gender = Gender(id: response.data[0].toString(), label: response.data[1]);
      return gender;
    }
    return null;
  }

  @override
  Future<Gender?> getGenderFromLabel({required String label}) async {
    final response = await supabase.from('genders').select('id, name').eq('name', label).limit(1).execute();
    if (response.error != null) {
      logger.e(response.error);
    } else {
      logger.i("Received Gender Value Successfully");
      final Gender gender = Gender(id: response.data[0].toString(), label: response.data[1]);
      return gender;
    }
    return null;
  }
}
