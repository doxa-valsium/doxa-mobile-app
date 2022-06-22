part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileScreenInitial extends ProfileState {}

class ProfileScreenLoading extends ProfileState {}

class ProfileScreenLoaded extends ProfileState {
  final User user;
  const ProfileScreenLoaded({
    required this.user,
  });

  @override
  List<Object> get props => [user];
}

class ProfileScreenError extends ProfileState {
  final String errorMessage;
  const ProfileScreenError({required this.errorMessage});
}
