part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}

class ProfileScreenInitial extends ProfileState {}

class ProfileScreenLoading extends ProfileState {}

class ProfileScreenLoaded extends ProfileState {}

class ProfileScreenError extends ProfileState {
  final String errorMessage;
  ProfileScreenError({required this.errorMessage});
}
