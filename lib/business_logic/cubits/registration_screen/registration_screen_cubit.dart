import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/supabase_auth_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/models.dart';
import 'package:doxa_mobile_app/services/app_message_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/scheduler.dart';

part 'registration_screen_state.dart';

class RegistrationScreenCubit extends Cubit<RegistrationScreenState> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  RegistrationScreenCubit({required AuthRepository authRepository, required UserRepository userRepository})
      : _authRepository = authRepository,
        _userRepository = userRepository,
        super(const RegistrationScreenInitial());

  Future<void> register({required Map<String, dynamic> userData, required VoidCallback onRegistered}) async {
    emit(RegistrationScreenLoading(userType: state.userType));
    try {
      final String email = userData['email'];
      final String password = userData['password'];
      String? uuid = await _authRepository.signUpWithEmailAndPassword(email, password);
      logger.i('User signed up successfully');
      logger.i(uuid);
      userData.remove('password');
      if (uuid != null) {
        await _userRepository.createNewUser(user: userData, uuid: uuid);
        logger.i('User added in database sucessfully');
      } else {
        emit(RegistrationScreenError(errorMessage: AppMessageService.genericErrorMessage, userType: state.userType));
      }
      onRegistered();
    } on AuthException catch (e) {
      emit(RegistrationScreenError(errorMessage: e.message, userType: state.userType));
    } catch (e) {
      logger.e(e);
      emit(RegistrationScreenError(errorMessage: AppMessageService.genericErrorMessage, userType: state.userType));
    }
  }

  Future<void> isUserExists({required String email, required VoidCallback onFalse}) async {
    emit(RegistrationScreenLoading(userType: state.userType));
    try {
      bool response = await _authRepository.userAlreadyExists(email: email);
      logger.i("Response: $response");
      if (response == false) {
        emit(const RegistrationScreenInitial());
        onFalse();
      } else {
        emit(RegistrationScreenError(errorMessage: AppMessageService.registrationAlreadyRegisteredMessage, userType: state.userType));
      }
    } catch (e) {
      logger.e(e);

      emit(RegistrationScreenError(errorMessage: AppMessageService.genericErrorMessage, userType: state.userType));
    }
  }

  void updateUsertype({required UserType usertype}) {
    emit(RegistrationScreenInitial(userType: usertype));
  }
}
