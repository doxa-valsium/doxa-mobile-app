import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileScreenInitial()) {
    on<FetchProfile>((event, emit) async {
      emit(ProfileScreenLoading());

      await Future.delayed(const Duration(seconds: 3));
      int errorStatus = 200;

      if (errorStatus == 200) {
        emit(ProfileScreenLoaded());
      } else {
        emit(ProfileScreenError());
      }

      // try {
      //   final profile = await getProfile();
      //   emit(ProfileLoaded(profile));
      // } catch (error) {
      //   emit(ProfileLoadedScreen(error.toString()));
      // }
    });
  }
}
