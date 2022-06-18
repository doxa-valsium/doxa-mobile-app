import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/supabase_user_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:doxa_mobile_app/models/user.dart' as local_user;

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileScreenState> {
  final UserRepository _userRepository;

  ProfileBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(ProfileScreenInitial()) {
    on<FetchProfile>((event, emit) async {
      emit(ProfileScreenLoading());
      try {
        // get user from user repo
        // get job title from
        local_user.User? user = _userRepository.getLoggedInUser;

        if (user != null) {
          emit(ProfileScreenLoaded(name: '${user.firstName} ${user.lastName}', email: user.email, jobTitle: 'Peon', profileUrl: user.profilePictureUrl));
        } else {
          emit(ProfileScreenError(errorMessage: 'Ops something went wrong ....'));
        }
      } on Exception {
        emit(const ProfileScreenError(errorMessage: 'Ops something went wrong ....'));
      }
    });
  }
}
