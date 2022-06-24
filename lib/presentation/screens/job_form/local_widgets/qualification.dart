import 'package:doxa_mobile_app/models/models.dart';
import 'package:equatable/equatable.dart';

class Qualification extends Equatable {
  final Degree degree;
  final Major major;
  final bool isRequired;

  const Qualification({
    required this.degree,
    required this.major,
    required this.isRequired,
  });

  Qualification.fromMap(Map<String, dynamic> map)
      : degree = map['qualificationDegree'],
        major = map['qualificationMajor'],
        isRequired = map['qualificationExperienceType'];

  Map<String, dynamic> toMap() {
    return {
      'qualificationDegree': degree,
      'qualificationMajor': major,
      'qualificationExperienceType': isRequired,
    };
  }

  @override
  List<Object?> get props => [degree, major, isRequired];
}
