import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/constants.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/services/error_message_service.dart';
import 'package:equatable/equatable.dart';

part 'registration_screen_state.dart';

class RegistrationScreenCubit extends Cubit<RegistrationScreenState> {
  final AuthRepository _authRepository;

  RegistrationScreenCubit({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(RegistrationScreenInitial());

  Future<void> register() async {
    await Future.delayed(kMockFutureDelay);
    emit(const RegistrationScreenError(errorMessage: ErrorMessageService.genericErrorMessage));
  }
}
