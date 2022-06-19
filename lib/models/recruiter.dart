import 'package:doxa_mobile_app/models/company.dart';
import 'package:doxa_mobile_app/models/job.dart';
import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:doxa_mobile_app/models/user.dart';

class Recruiter extends User {
  final bool? isAdmin;
  final List<Job> jobs;
  final Company? company;
  final Selectable? jobTitle;

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
      this.company,
      this.jobTitle,
      this.jobs = const [],
      super.profilePictureUrl});

  @override
  List<Object?> get props => super.props + [isAdmin, jobs, company, jobTitle];
}
