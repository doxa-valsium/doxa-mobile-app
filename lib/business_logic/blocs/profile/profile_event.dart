part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable{
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class FetchProfile extends ProfileEvent {}

// class ProfileLoaded extends ProfileEvent {
//   // final Profile profile;

//   // ProfileLoaded(this.profile);
// }
