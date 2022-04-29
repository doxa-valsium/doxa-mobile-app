import 'package:doxa_mobile_app/data/repositories/auth_repository/mock_auth_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_cubit.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/confirm/confirmation_event.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/confirm/confirmation_state.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/form_submission_status..dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmationBloc extends Bloc<ConfirmationEvent, ConfirmationState> {
  final MockAuthRepository authRepository;
  final AuthCubit authCubit;

  ConfirmationBloc({required this.authRepository, required this.authCubit}) : super(ConfirmationState()) {
    on<ConfirmationCodeChanged>((event, emit) {
      emit(state.copyWith(code: event.code));
    });
    on<ConfirmationSubmitted>((event, emit) async {
      emit(state.copyWith(formStatus: FormSubmitting()));

      try {
        final userId = await authRepository.confirmSignUp(email: authCubit.auth_crendentials.username, confirmationCode: state.code);
        emit(state.copyWith(formStatus: SubmissionSuccess()));
        final credentials = authCubit.auth_crendentials;
        credentials.userId = userId;
        print(credentials);
        authCubit.launchSession(credentials);
      } catch (e) {
        emit(state.copyWith(formStatus: SubmissionFailed(exception: Exception(e)))); //problem here
      }
    });
  }
}
