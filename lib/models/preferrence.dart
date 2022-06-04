import 'package:doxa_mobile_app/models/location.dart';
import 'package:doxa_mobile_app/models/salaray_range.dart';
import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

class Preferrence extends Equatable {
  final EmploymentType employmentType;
  final WorkplaceType workplaceType;
  final List<Location> locations;
  final List<Industry> industries;
  final List<JobTitle> jobRoles;
  final SalarayRange salarayRange;

  const Preferrence({
    required this.employmentType,
    required this.workplaceType,
    required this.locations,
    required this.industries,
    required this.jobRoles,
    required this.salarayRange,
  });

  @override
  List<Object?> get props => [employmentType, workplaceType, locations, industries, jobRoles, salarayRange];
}
