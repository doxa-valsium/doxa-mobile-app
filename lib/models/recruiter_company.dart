import 'package:doxa_mobile_app/models/models.dart';
import 'package:equatable/equatable.dart';

class RecruiterCompany extends Equatable {
  final Company company;
  final DateTime joinedAt;
  final bool isAdmin;
  final JobTitle title;
  const RecruiterCompany({required this.company, required this.joinedAt, required this.isAdmin, required this.title});

  @override
  List<Object?> get props => [company, joinedAt, isAdmin, title];

  factory RecruiterCompany.fromMap(Map<String, dynamic> map) {
    return RecruiterCompany(
      company: Company.fromMap(map['company'] as Map<String, dynamic>),
      joinedAt: DateTime.parse(map['joined_at'] as String),
      isAdmin: map['is_admin'] as bool,
      title: JobTitle.fromMap(map['job_title'] as Map<String, dynamic>),
    );
  }
}
