import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:equatable/equatable.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;

  LoginCubit({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const LoginState(loginStatus: LoginStatus.initial));

  Future<void> login({required String email, required String password}) async {
    emit(const LoginState(loginStatus: LoginStatus.loading));
    try {
      await _authRepository.signInWithEmailAndPassword(email, password);
      emit(const LoginState(loginStatus: LoginStatus.sucess));
    } catch (e) {
      emit(const LoginState(loginStatus: LoginStatus.error));
    }
  }
}
