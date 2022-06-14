import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

enum UserType { recruiter, candidate, unknown}

class User extends Equatable {
  final String? userId;
  final String firstName;
  final String lastName;
  final String email;
  final Gender gender;
  final bool isVerified;
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
    required this.isVerified,
    required this.userType,
    required this.isOnboarded,
    this.dateOfBirth,
    this.profilePictureUrl,
  });

  @override
  List<Object?> get props => [userId, firstName, lastName, email, gender, dateOfBirth, profilePictureUrl];

  static const empty = User(
    email: '-',
    firstName: '-',
    lastName: '-',
    isVerified: true,
    isOnboarded: true,
    gender: Gender(id: '-', label: '-'),
    userId: '-',
    userType: UserType.unknown
  );
}
