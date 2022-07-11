import 'package:doxa_mobile_app/models/models.dart';
import 'package:equatable/equatable.dart';

class CompanyMember extends Equatable {
  final String name;
  final JobTitle title;
  final String? avatarUrl;
  final bool isAdmin;

  const CompanyMember({
    required this.name,
    required this.title,
    this.avatarUrl,
    required this.isAdmin,
  });

  @override
  List<Object?> get props => throw UnimplementedError();

  factory CompanyMember.fromMap(Map<String, dynamic> map) {
    return CompanyMember(
      name: map['user']['first_name'] + ' ' + map['user']['last_name'],
      title: JobTitle.fromMap(map['job_title']),
      avatarUrl: map['profile_photo'],
      isAdmin: map['is_admin'] as bool,
    );
  }
}
