part of 'profile_bloc.dart';

@immutable
abstract class ProfileEvent {}

class FetchProfile extends ProfileEvent {
}

class FetchFailed extends ProfileEvent {
}

// class ProfileLoaded extends ProfileEvent {
//   // final Profile profile;

//   // ProfileLoaded(this.profile);
// }
