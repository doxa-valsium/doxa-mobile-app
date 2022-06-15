import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/constants.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileScreenInitial()) {
    on<FetchProfile>((event, emit) async {
      emit(ProfileScreenLoading());
      try {
        await Future.delayed(kMockFutureDelay);
        emit(ProfileScreenLoaded());
      } on Exception {
        emit(ProfileScreenError(errorMessage: 'Ops something went wrong ....'));
      }
    });
  }
}
