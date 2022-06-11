import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/services/error_message_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

part 'registration_screen_state.dart';

class RegistrationScreenCubit extends Cubit<RegistrationScreenState> {
  final AuthRepository _authRepository;
  final GlobalKey<FormBuilderState> formKey;

  RegistrationScreenCubit({required AuthRepository authRepository, required GlobalKey<FormBuilderState> formKey})
      : _authRepository = authRepository,
        formKey = formKey,
        super(RegistrationScreenInitial(formKey: formKey));
  // super(RegistrationScreenInitial());

  Future<void> register() async {
    emit(RegistrationScreenLoading());
    final email = formKey.currentState!.value['registration_email'];
    final password = formKey.currentState!.value['registration_password'];
    try {
      await _authRepository.signUpWithEmailAndPassword(email, password);
      emit(RegistrationScreenSucess());
    } catch (e) {
      emit(const RegistrationScreenError(errorMessage: ErrorMessageService.genericErrorMessage));
    }
  }
}
