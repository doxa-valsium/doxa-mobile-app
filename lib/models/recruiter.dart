import 'package:doxa_mobile_app/models/company.dart';
import 'package:doxa_mobile_app/models/job.dart';
import 'package:doxa_mobile_app/models/user.dart';

class Recruiter extends User {
  final bool? isAdmin;
  final List<Job> jobs;
  final Company? company;

  const Recruiter(
      {required super.userId,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.gender,
      required super.isVerified,
      required super.isOnboarded,
      required super.dateOfBirth,
      required super.userType,
      required this.isAdmin,
      this.company,
      this.jobs=const [],
      super.profilePictureUrl});

  @override
  List<Object?> get props => super.props + [isAdmin, jobs];
}
