// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileScreenInitial()) {
    on<FetchProfile>((event, emit) async {
      emit(ProfileScreenLoading());
      try {
        await Future.delayed(const Duration(seconds: 2));
        //uncomment this line to simulate error
        // throw Exception();
      } on Exception {
        emit(ProfileScreenError(errorMessage: 'Ops something went wrong ....'));
      }
    });
  }
}
