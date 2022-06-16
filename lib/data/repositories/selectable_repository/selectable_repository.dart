import 'package:doxa_mobile_app/models/selectable.dart';

abstract class SelectableRepository {
  Future<List<Selectable?>> getSelectables(Type selectableType);
  Future<void> addNewSelectable(Selectable newSelectable);
}
