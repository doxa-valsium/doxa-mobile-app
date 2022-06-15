import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/services/error_message_service.dart';
import 'package:equatable/equatable.dart';

part 'registration_screen_state.dart';

class RegistrationScreenCubit extends Cubit<RegistrationScreenState> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  RegistrationScreenCubit({required AuthRepository authRepository, required UserRepository userRepository})
      : _authRepository = authRepository,
        _userRepository = userRepository,
        super(RegistrationScreenInitial());

  Future<void> register(Map<String, dynamic> user) async {
    emit(RegistrationScreenLoading());
    try {
      final String email = user['email'];
      final String password = user['password'];
      String? uuid = await _authRepository.signUpWithEmailAndPassword(email, password);
      logger.i(uuid);
      user.remove('password');
      if (uuid != null) {
        await _userRepository.createNewUser(user: user, uuid: uuid);
        emit(RegistrationScreenSucess());
      } else {
        emit(const RegistrationScreenError(errorMessage: ErrorMessageService.genericErrorMessage));
      }
    } catch (e) {
      emit(const RegistrationScreenError(errorMessage: ErrorMessageService.genericErrorMessage));
    }
  }

  Future<void> isUserExists(String email) async {
    emit(RegistrationScreenLoading());
    try {
      bool response = await _authRepository.userAlreadyExists(email: email);
      logger.i("Response: $response");
      if (response == false) {
        emit(RegistrationScreenSucess());
      } else {
        emit(const RegistrationScreenError(errorMessage: ErrorMessageService.registrationAlreadyRegisteredMessage));
      }
    } catch (e) {
      emit(const RegistrationScreenError(errorMessage: ErrorMessageService.genericErrorMessage));
    }
  }

  // Future<void> addUser(Map<String, dynamic> user) async {
  //   emit(RegistrationScreenLoading());
  //   try {
  //     emit(RegistrationScreenSucess());
  //   } catch (e) {
  //     emit(const RegistrationScreenError(errorMessage: ErrorMessageService.genericErrorMessage));
  //   }
  // }
}
