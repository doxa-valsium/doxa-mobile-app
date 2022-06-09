import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/business_logic/cubits/unauth_wrapper/unauth_wrapper_state.dart';
import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';

class UnAuthWrapperCubit extends Cubit<UnAuthWrapperState> {
  final AuthRepository _authRepository;

  UnAuthWrapperCubit({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const OnLoginScreen(screenStatus: ScreenStatus.initial));

  void goToLogin() {
    emit(const OnLoginScreen(screenStatus: ScreenStatus.initial));
  }

  void goToRegistation() {
    emit(const OnRegistrationScreen(registrationData: {}, screenStatus: ScreenStatus.initial));
  }

  void goToBasicInfo({required Map<String, dynamic> registrationData}) {
    if (state is OnRegistrationScreen) {
      emit(OnRegistrationScreen(registrationData: registrationData, screenStatus: (state as OnRegistrationScreen).screenStatus));
    } else {
      emit(const UnAuthWrapperError(errorMessage: "You are not on the registration screen"));
    }
  }

  Future<void> login({required String email, required String password}) async {
    emit(const OnLoginScreen(screenStatus: ScreenStatus.loading));
    try {
      await _authRepository.signInWithEmailAndPassword(email, password);
      emit(const OnLoginScreen(screenStatus: ScreenStatus.sucess));
    } catch (e) {
      emit(const UnAuthWrapperError(errorMessage: "Failed to login!"));
    }
  }

  Future<void> register() async {
    await Future.delayed(kMockFutureDelay);
    emit(const UnAuthWrapperError(errorMessage: "Failed to signup!"));
  }
}
