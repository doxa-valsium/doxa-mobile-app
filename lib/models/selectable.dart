import 'package:equatable/equatable.dart';

abstract class Selectable extends Equatable {
  static String get selectableIdentifire => 'Selectable';
  final int? _id;
  final String _label;
  String get label => _label;
  int? get id => _id;
  const Selectable._internal({int? id, required String label}) : _id = id, _label = label;
  @override
  List<Object?> get props => [_id, label, selectableIdentifire];
}

class Gender extends Selectable {
  const Gender({int? id, required String label}) : super._internal(id: id, label: label);

}

class EmploymentType extends Selectable {
  const EmploymentType({int? id, required String label}) : super._internal(id: id, label: label);
}

class WorkplaceType extends Selectable {
  const WorkplaceType({int? id, required String label}) : super._internal(id: id, label: label);
}

class City extends Selectable {
  const City({int? id, required String label}) : super._internal(id: id, label: label);
}

class Country extends Selectable {
  const Country({int? id, required String label}) : super._internal(id: id, label: label);
}

class Industry extends Selectable {
  const Industry({int? id, required String label}) : super._internal(id: id, label: label);
}

class Skill extends Selectable {
  const Skill({int? id, required String label}) : super._internal(id: id, label: label);
}

class Degree extends Selectable {
  const Degree({int? id, required String label}) : super._internal(id: id, label: label);
}

class Major extends Selectable {
  const Major({int? id, required String label}) : super._internal(id: id, label: label);
}

class Institute extends Selectable {
  const Institute({int? id, required String label}) : super._internal(id: id, label: label);
}

class JobTitle extends Selectable {
  const JobTitle({int? id, required String label}) : super._internal(id: id, label: label);
}