import 'package:doxa_mobile_app/models/company.dart';
import 'package:doxa_mobile_app/models/location.dart';
import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

class Experiance extends Equatable {
  final String title;
  final EmploymentType employmentType;
  final Location? location;
  final Company company;
  final Industry industry;
  final DateTime startDate;
  final DateTime? endDate;

  const Experiance({required this.title, required this.employmentType, this.location, required this.company, required this.industry, required this.startDate, this.endDate});

  @override
  List<Object?> get props => [title, employmentType, location, company, industry, startDate, endDate];
}
