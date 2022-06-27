import 'package:doxa_mobile_app/models/company.dart';
import 'package:doxa_mobile_app/models/location.dart';
import 'package:doxa_mobile_app/models/qualification.dart';
import 'package:doxa_mobile_app/models/salaray_range.dart';
import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

class Job extends Equatable {
  final int jobId;
  final String jobTitle;
  final String? headline;
  final EmployementType employmentType;
  final WorkplaceType? workplaceType;
  final Location location;
  final String? description; 
  final SalarayRange? salarayRange;
  final int? yearsExperianceRequired;
  final List<Qualification>? requiredQualification;
  final List<Qualification>? prefferedQualification;
  final Industry? industry;
  final List<Skill>? skills;
  final bool isActive;
  final Company? company;
  final String openedByRecruiterId;
  final int? totalMatches;
  const Job({
    required this.jobId,
    required this.jobTitle,
    this.headline,
    required this.employmentType,
    this.workplaceType,
    required this.location,
    this.description,
    this.salarayRange,
    this.yearsExperianceRequired,
    this.requiredQualification,
    this.prefferedQualification,
    this.industry,
    this.skills,
    required this.isActive,
    this.company,
    required this.openedByRecruiterId,
     this.totalMatches,
  });

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      jobId: json['id'],
      jobTitle: json['title'],
      employmentType: EmployementType(id: json['employement_type_id'], label: json['employement_type_label']),
      location: Location(city: City(id: json['location_city_id'], label: json['location_city_label'])),
      openedByRecruiterId: json['recruiter_id'],
      isActive: json['is_active'],
      totalMatches: json['total_matches'],
    );
  }
  // factory Job.fromMap(Map<String,dynamic> json){
  //   return Job(

  //   );
  // }

  @override
  List<Object?> get props => [
        jobId,
        jobTitle,
        headline,
        employmentType,
        workplaceType,
        location,
        salarayRange,
        yearsExperianceRequired,
        requiredQualification,
        prefferedQualification,
        industry,
        skills,
        isActive,
        company,
        openedByRecruiterId
      ];
}
