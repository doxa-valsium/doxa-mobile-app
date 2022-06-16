import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/selectable_repository/selectable_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/selectable.dart';

Map<String, Function> types = {
  'Gender': (map) => Gender.fromMap(map),
  'WorkplaceType' : (map) => WorkplaceType.fromMap(map),
  'EmployementType': (map) => EmployementType.fromMap(map),
  'Major': (map) => Major.fromMap(map),
  'Degree': (map) => Degree.fromMap(map),
  'City': (map) => City.fromMap(map),
  'Country': (map) => Country.fromMap(map),
  'Industry': (map) => Industry.fromMap(map),
  'Skill': (map) => Skill.fromMap(map),
};

class SupabaseSelectableRepository extends SelectableRepository {
  @override
  Future<void> addNewSelectable(Selectable newSelectable) {
    throw UnimplementedError();
  }

  @override
  Future<List<Selectable?>> getSelectables(Type selectableType) async {
    List<Selectable> result = [];

    Selectable instance = types[selectableType.toString()]!({'label': 'unknown', 'id': 0});

    final response = await supabase.from(instance.selectableIdentifier).select('*').limit(8).execute();
    if (response.hasError) {
      logger.i(response.error);
    } else {
      logger.i("Fetched Selectable Data Successfully!");
      response.data.forEach((element) {
        result.add(types[selectableType.toString()]!({'label': element['label'], 'id': element['id']}));
      });
    }
    return result;
  }
}
