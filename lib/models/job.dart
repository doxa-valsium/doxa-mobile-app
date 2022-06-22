import 'package:doxa_mobile_app/models/company.dart';
import 'package:doxa_mobile_app/models/location.dart';
import 'package:doxa_mobile_app/models/qualification.dart';
import 'package:doxa_mobile_app/models/salaray_range.dart';
import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

class Job extends Equatable {
  final String jobId;
  final String title;
  final String? headline;
  final EmployementType employmentType;
  final WorkplaceType? workplaceType;
  final Location location;
  final SalarayRange? salarayRange;
  final int? yearsExperianceRequired;
  final List<Qualification>? requiredQualification;
  final List<Qualification>? prefferedQualification;
  final Industry? industry;
  final List<Skill>? skills;
  final bool isActive;
  final Company? company;
  final String openedByRecruiterId;
  final int totalMatches;
  const Job({
    required this.jobId,
    required this.title,
    this.headline,
    required this.employmentType,
    this.workplaceType,
    required this.location,
    this.salarayRange,
    this.yearsExperianceRequired,
    this.requiredQualification,
    this.prefferedQualification,
    this.industry,
    this.skills,
    required this.isActive,
    this.company,
    required this.openedByRecruiterId,
    required this.totalMatches,
  });

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      jobId: json['id'],
      title: json['title'],
      employmentType: json['employment_type'],
      location: json['location'],
      openedByRecruiterId: json['recruiter_id'],
      isActive: json['is_active'],
      totalMatches: json['total_matches'],
    );
  }

  @override
  List<Object?> get props => [
        jobId,
        title,
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
