import 'package:doxa_mobile_app/models/job.dart';
import 'package:doxa_mobile_app/models/user.dart';

class Recruiter extends User {
  final bool? isAdmin;
  final List<Job>? jobs;

  const Recruiter(
      {required super.userId,
      required super.firstName,
      required super.lastName,
      required super.email,
      required super.gender,
      required super.dateOfBirth,
      required this.isAdmin,
      this.jobs=const [],
      super.profilePictureUrl});

  @override
  List<Object?> get props => super.props + [isAdmin, jobs];
}
