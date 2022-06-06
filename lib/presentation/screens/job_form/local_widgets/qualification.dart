import 'package:equatable/equatable.dart';

class Qualification extends Equatable {
  late final String degree;
  late final String major;
  late final bool isRequired;

  Qualification({
    required this.degree,
    required this.major,
    required this.isRequired,
  });

  Qualification.fromMap(Map<String, dynamic> map) {
    degree = map['qualificationDegree'];
    major = map['qualificationMajor'];
    isRequired = map['qualificationExperienceType'];
  }

  Map<String, dynamic> toMap () {
    return {
      'qualificationDegree': degree,
      'qualificationMajor': major,
      'qualificationExperienceType': isRequired,
    };
  }

  @override
  List<Object?> get props => [degree, major, isRequired];
}
