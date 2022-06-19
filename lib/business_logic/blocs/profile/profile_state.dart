part of 'profile_bloc.dart';

abstract class ProfileScreenState extends Equatable {
  const ProfileScreenState();

  @override
  List<Object> get props => [];
}

class ProfileScreenInitial extends ProfileScreenState {}

class ProfileScreenLoading extends ProfileScreenState {}

class ProfileScreenLoaded extends ProfileScreenState {
  final User user;
  const ProfileScreenLoaded({
    required this.user,
  });

  @override
  List<Object> get props => [user];
}

class ProfileScreenError extends ProfileScreenState {
  final String errorMessage;
  const ProfileScreenError({required this.errorMessage});
}
