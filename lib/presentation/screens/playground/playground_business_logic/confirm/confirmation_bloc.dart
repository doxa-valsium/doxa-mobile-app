import 'package:doxa_mobile_app/data/repositories/auth_repository/amplify_auth_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_cubit.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/confirm/confirmation_event.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/confirm/confirmation_state.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/form_submission_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmationBloc extends Bloc<ConfirmationEvent, ConfirmationState> {
  final AmplifyAuthRepository authRepository;
  final AuthCubit authCubit;

  ConfirmationBloc({required this.authRepository, required this.authCubit}) : super(ConfirmationState()) {
    on<ConfirmationCodeChanged>((event, emit) {
      emit(state.copyWith(code: event.code));
    });
    on<ConfirmationSubmitted>((event, emit) async {
      emit(state.copyWith(formStatus: FormSubmitting()));

      try {
        await authRepository.confirmSignUp(
          email: authCubit.authCrendentials.email, //authCubit.authCrendentials.username,
          confirmationCode: state.code,
        );
        emit(state.copyWith(formStatus: SubmissionSuccess())); //chagnges

        final credentials = authCubit.authCrendentials;
        final userId = await authRepository.signInWithEmailAndPassword(email: credentials.email, password: credentials.password);

        credentials.userId = userId;
        authCubit.launchSession(credentials);
      } catch (e) {
        logger.e('1 : $e');
        emit(state.copyWith(formStatus: SubmissionFailed(exception: Exception(e)))); //problem here
      }
    });
  }
}
