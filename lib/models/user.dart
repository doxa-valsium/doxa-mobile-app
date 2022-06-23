// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:doxa_mobile_app/models/candidate.dart';
import 'package:doxa_mobile_app/models/recruiter.dart';
import 'package:doxa_mobile_app/models/selectable.dart';

enum UserType {
  unknown,
  candidate,
  recruiter;
}

class User extends Equatable {
  final String? userId;
  final String firstName;
  final String lastName;
  final String email;
  final Gender gender;
  final bool isOnboarded;
  final UserType userType;
  final DateTime? dateOfBirth;
  final String? profilePictureUrl;
  const User({
    this.userId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.gender,
    required this.userType,
    required this.isOnboarded,
    this.dateOfBirth,
    this.profilePictureUrl,
  });

  factory User.fromMap(Map<String, dynamic> userMap) {
    if (userMap['user_type'] == UserType.candidate) {
      return Candidate.fromMap(userMap);
    }
    return Recruiter.fromMap(userMap);
  }

  @override
  List<Object?> get props => [userId, firstName, lastName, email, gender, dateOfBirth, profilePictureUrl];

  static const empty = User(email: '-', firstName: '-', lastName: '-', isOnboarded: true, gender: Gender(id: 0, label: '-'), userId: '-', userType: UserType.unknown);
}
