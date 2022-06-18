part of 'profile_bloc.dart';

abstract class ProfileScreenState extends Equatable {
  const ProfileScreenState();

  @override
  List<Object> get props => [];
}

class ProfileScreenInitial extends ProfileScreenState {}

class ProfileScreenLoading extends ProfileScreenState {}

class ProfileScreenLoaded extends ProfileScreenState {
  final String name;
  final String email;
  final String? profileUrl;
  final String jobTitle;
  const ProfileScreenLoaded({
    required this.name,
    required this.email,
    this.profileUrl,
    required this.jobTitle,
  });

  @override
  List<Object> get props => [name, email, jobTitle];
}

class ProfileScreenError extends ProfileScreenState {
  final String errorMessage;
  const ProfileScreenError({required this.errorMessage});
}
