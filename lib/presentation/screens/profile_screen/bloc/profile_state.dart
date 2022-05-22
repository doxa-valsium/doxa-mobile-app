part of 'profile_bloc.dart';

@immutable

abstract class ProfileState {}

class ProfileScreenInitial extends ProfileState {}

class ProfileScreenLoading extends ProfileState {
}

class ProfileScreenLoaded extends ProfileState {
  // final Profile profile;

  // ProfileLoadedScreen(this.profile);
}

class ProfileScreenError extends ProfileState {
  // final String error;

  // ProfileLoadedScreen(this.error);
}
