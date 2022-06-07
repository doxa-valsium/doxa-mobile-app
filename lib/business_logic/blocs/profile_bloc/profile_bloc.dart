import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
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
        //uncomment this line to simulate error
        // throw Exception();
      } on Exception {
        emit(ProfileScreenError(errorMessage: 'Ops something went wrong ....'));
      }
    });
  }
}
