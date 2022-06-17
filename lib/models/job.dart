import 'package:doxa_mobile_app/models/company.dart';
import 'package:doxa_mobile_app/models/location.dart';
import 'package:doxa_mobile_app/models/qualification.dart';
import 'package:doxa_mobile_app/models/salaray_range.dart';
import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

class Job extends Equatable{
  final String? jobId;
  final String title;
  final String headline;
  final EmployementType employmentType;
  final WorkplaceType workplaceType;
  final Location? location;
  final SalarayRange? salarayRange;
  final int yearsExperianceRequired;
  final List<Qualification> requiredQualification;
  final List<Qualification> prefferedQualification;
  final Industry industry;
  final List<Skill> skills;
  final bool isActive;
  final Company company;
  final String openedByRecruiterId;

  const Job(
      {this.jobId,
      required this.title,
      required this.headline,
      required this.employmentType,
      required this.workplaceType,
      this.location,
      required this.salarayRange,
      required this.yearsExperianceRequired,
      required this.requiredQualification,
      required this.prefferedQualification,
      required this.industry,
      required this.skills,
      required this.isActive,
      required this.company,
      required this.openedByRecruiterId});
      
  @override
  List<Object?> get props => [jobId, title, headline, employmentType, workplaceType, location, salarayRange, yearsExperianceRequired, requiredQualification, prefferedQualification, industry, skills, isActive, company, openedByRecruiterId];
  
}
