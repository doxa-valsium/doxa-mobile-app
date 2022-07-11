import 'package:doxa_mobile_app/models/models.dart';

class Candidate extends User {
  final String? bio;
  final List<Education>? education;
  final List<Experiance>? experiance;
  final List<Skill>? skills;
  final List<Publication>? publications;
  final List<Award>? awards;
  final List<Certification>? certifications;
  final Preferrence? preferrence;
  final List<ExternalLink> externalLinks;

  const Candidate({
    required super.userId,
    required super.firstName,
    required super.lastName,
    required super.email,
    required super.gender,
    required super.dateOfBirth,
    required super.isOnboarded,
    required super.userType,
    super.profilePictureUrl,
    this.bio,
    this.education,
    this.experiance,
    this.skills,
    this.publications = const [],
    this.awards = const [],
    this.certifications = const [],
    this.preferrence,
    this.externalLinks = const [],
  });
  
  factory Candidate.fromMap(Map<String,dynamic> map){
    return Candidate(
        userId: map['uuid'],
        firstName: map['first_name'],
        lastName: map['last_name'],
        email: map['email'],
        skills: map['skills'],
        gender: map['gender'],
        experiance: map['experience'],
        bio: map['bio'],
        isOnboarded: map['is_onboarded'],
        dateOfBirth: map['date_of_birth'],
        preferrence: map['preferrence'],
        education: map['education'],
        userType: UserType.candidate);
  }

  @override
  List<Object?> get props => super.props +  [bio, education, experiance, skills, publications, awards, certifications, preferrence, externalLinks];
}
