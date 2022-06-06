import 'package:doxa_mobile_app/models/location.dart';
import 'package:doxa_mobile_app/models/qualification.dart';
import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

class Education extends Equatable {
  final Institute institute;
  final Qualification qualification;
  final Location? location;
  final String? grade;

  const Education({required this.institute, required this.qualification, this.location, this.grade});

  @override
  List<Object?> get props => [institute, qualification, location, grade];
}
