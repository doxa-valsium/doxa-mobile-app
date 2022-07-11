import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:doxa_mobile_app/models/user.dart';

class Recruiter extends User {
  final bool? isAdmin;
  final Selectable? jobTitle;
  final int? companyId;

  const Recruiter(
      {required super.userId,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.gender,
      required super.isOnboarded,
      required super.dateOfBirth,
      required super.userType,
      this.isAdmin,
      this.jobTitle,
      this.companyId,
      super.profilePictureUrl});

  factory Recruiter.fromMap(Map<String, dynamic> map) {
    return Recruiter(
      userId: map['uuid'],
      firstName: map['first_name'],
      lastName: map['last_name'],
      email: map['email'],
      gender: map['gender'],
      isOnboarded: map['is_onboarded'],
      dateOfBirth: map['date_of_birth'],
      userType: UserType.recruiter,
      isAdmin: map['is_admin'],
      companyId: map['company_id'],
      jobTitle: map['job_title']==null ? null : JobTitle.fromMap(map['job_title']),
    );
  }

  @override
  List<Object?> get props => super.props + [isAdmin, jobTitle];
}
