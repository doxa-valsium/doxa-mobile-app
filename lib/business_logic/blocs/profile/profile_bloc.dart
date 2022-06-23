import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/exceptions/auth_exception.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/models/user.dart';
import 'package:doxa_mobile_app/services/app_message_service.dart';
import 'package:equatable/equatable.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileScreenState> {
  final UserRepository _userRepository;
  late final StreamSubscription _subscription;
  ProfileBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(ProfileScreenInitial()) {
    on<FetchProfile>((event, emit) async {
      emit(ProfileScreenLoading());
      await emit.forEach(
        _userRepository.loggedInUser,
        onData: (User user) => ProfileScreenLoaded(user: user),
        onError: (e, _) {
          if (e is AuthException) {
            return ProfileScreenError(errorMessage: e.message);
          }
          return const ProfileScreenError(errorMessage: AppMessageService.genericErrorMessage);
        },
      );
      
    });
  }
  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
