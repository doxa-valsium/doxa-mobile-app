import 'package:doxa_mobile_app/models/award.dart';
import 'package:doxa_mobile_app/models/certification.dart';
import 'package:doxa_mobile_app/models/education.dart';
import 'package:doxa_mobile_app/models/experiance.dart';
import 'package:doxa_mobile_app/models/external_link.dart';
import 'package:doxa_mobile_app/models/preferrence.dart';
import 'package:doxa_mobile_app/models/publication.dart';
import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:doxa_mobile_app/models/user.dart';

class Candidate extends User {
  final String bio;
  final List<Education> education;
  final List<Experiance>? experiance;
  final List<Skill> skills;
  final List<Publication> publications;
  final List<Award> awards;
  final List<Certification> certifications;
  final Preferrence preferrence;
  final List<ExternalLink> externalLinks;
  const Candidate({
    required super.userId,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.gender,
    required super.dateOfBirth,
    required super.isOnboarded,
    required super.isVerified,
    required super.userType,
    super.profilePictureUrl,
    required this.bio,
    required this.education,
    required this.experiance,
    required this.skills,
    this.publications = const [],
    this.awards = const [],
    this.certifications = const [],
    required this.preferrence,
    this.externalLinks = const [],
  });

  @override
  List<Object?> get props => super.props +  [bio, education, experiance, skills, publications, awards, certifications, preferrence, externalLinks];
}
