import 'package:doxa_mobile_app/models/selectable.dart';
import 'package:equatable/equatable.dart';

enum UserType { recruiter, candidate }
class User extends Equatable {
  final String? userId;
  final String firstName;
  final String lastName;
  final String email;
  final Gender gender;
  final DateTime dateOfBirth;
  final String? profilePictureUrl;
  const User({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.gender,
    required this.dateOfBirth,
    this.profilePictureUrl,
  });

  @override
  List<Object?> get props => [userId, firstName, lastName, email, gender, dateOfBirth, profilePictureUrl];
}
