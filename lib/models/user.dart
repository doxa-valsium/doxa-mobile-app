import 'package:doxa_mobile_app/models/candidate.dart';
import 'package:doxa_mobile_app/models/recruiter.dart';
import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

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

  factory User.fromMap(Map userMap) {
    if (userMap['user_type'] == UserType.candidate) {
      return Candidate(
        userId: userMap['uuid'],	
        firstName: userMap['first_name'],
        lastName: userMap['last_name'],
        email: userMap['email'],
        skills: userMap['skills'],
        gender: userMap['gender'], 
        experiance: userMap['experience'], 
        bio: userMap['bio'], 
        isOnboarded: userMap['is_onboarded'],
        dateOfBirth: userMap['date_of_birth'],
        preferrence: userMap['preferrence'],
        education: userMap['education'],
        userType: UserType.candidate
      );
    } 
    return Recruiter(
      userId: userMap['uuid'],
        firstName: userMap['first_name'],
        lastName: userMap['last_name'],
        email: userMap['email'],
        gender: userMap['gender'],
        isOnboarded: userMap['is_onboarded'],
        dateOfBirth: userMap['date_of_birth'],
        userType: UserType.recruiter,
        isAdmin: userMap['is_admin'],
    );
  }

  @override
  List<Object?> get props => [userId, firstName, lastName, email, gender, dateOfBirth, profilePictureUrl];

  static const empty = User(email: '-', firstName: '-', lastName: '-', isOnboarded: true, gender: Gender(id: 0, label: '-'), userId: '-', userType: UserType.unknown);
}
