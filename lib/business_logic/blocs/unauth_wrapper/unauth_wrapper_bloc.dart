import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'unauth_wrapper_event.dart';
part 'unauth_wrapper_state.dart';

class UnauthWrapperBloc extends Bloc<UnauthWrapperEvent, UnauthWrapperState> {
  UnauthWrapperBloc() : super(OnLoginScreen()) {
    on<NavigateToLogin>((event, emit) async {
      emit(OnLoginScreen());
    });
    on<NavigateToRegistration>((event, emit) async {
      emit(OnRegistrationScreen());
    });
  }
}
