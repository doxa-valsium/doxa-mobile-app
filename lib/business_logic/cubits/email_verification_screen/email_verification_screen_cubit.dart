import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/supabase_auth_repository.dart';
import 'package:doxa_mobile_app/services/app_message_service.dart';
import 'package:equatable/equatable.dart';

part 'email_verification_screen_state.dart';

class EmailVerificationScreenCubit extends Cubit<EmailVerificationScreenState> {
  final AuthRepository _authRepository;
  EmailVerificationScreenCubit({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(EmailVerificationSent());

  Future<void> resendVerificationEmail(String email) async {
    emit(EmailVerificationSending());
    try {
      await _authRepository.resendVerificationEmail(email: email);
      emit(EmailVerificationSent());
    } on AuthException catch (e) {
      emit(EmailVerificationScreenError(errorMessage: e.message));
    } catch (e) {
      emit(const EmailVerificationScreenError(errorMessage: AppMessageService.genericErrorMessage));
    }
  }
}
