import 'package:equatable/equatable.dart';

abstract class Selectable extends Equatable {
  static String get selectableIdentifire => 'Selectable';
  final String? _id;
  final String _label;
  String get label => _label;
  String? get id => _id;
  const Selectable._internal({String? id, required String label}) : _id = id, _label = label;
  @override
  List<Object?> get props => [_id, label, selectableIdentifire];
}

class Gender extends Selectable {
  const Gender({String? id, required String label}) : super._internal(id: id, label: label);

}

class EmploymentType extends Selectable {
  const EmploymentType({String? id, required String label}) : super._internal(id: id, label: label);
}

class WorkplaceType extends Selectable {
  const WorkplaceType({String? id, required String label}) : super._internal(id: id, label: label);
}

class City extends Selectable {
  const City({String? id, required String label}) : super._internal(id: id, label: label);
}

class Country extends Selectable {
  const Country({String? id, required String label}) : super._internal(id: id, label: label);
}

class Industry extends Selectable {
  const Industry({String? id, required String label}) : super._internal(id: id, label: label);
}

class Skill extends Selectable {
  const Skill({String? id, required String label}) : super._internal(id: id, label: label);
}

class Degree extends Selectable {
  const Degree({String? id, required String label}) : super._internal(id: id, label: label);
}

class Major extends Selectable {
  const Major({String? id, required String label}) : super._internal(id: id, label: label);
}

class Institute extends Selectable {
  const Institute({String? id, required String label}) : super._internal(id: id, label: label);
}

class JobTitle extends Selectable {
  const JobTitle({String? id, required String label}) : super._internal(id: id, label: label);
}