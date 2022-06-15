import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/services/error_message_service.dart';
import 'package:equatable/equatable.dart';

part 'login_screen_state.dart';

class LoginScreenCubit extends Cubit<LoginScreenState> {
  final AuthRepository _authRepository;
  LoginScreenCubit({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(LoginScreenInitial());

  Future<void> login({required String email, required String password}) async {
    emit(LoginScreenLoading());
    try {
      await _authRepository.signInWithEmailAndPassword(email, password);
      emit(LoginScreenSuccess());
    } catch (e) {
      emit(const LoginScreenError(errorMessage: ErrorMessageService.genericErrorMessage));
    }
  }
}
