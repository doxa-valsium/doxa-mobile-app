import 'package:doxa_mobile_app/data/repositories/auth_repository/amplify_auth_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_crendentials.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_cubit.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/form_submission_status.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/login/login_event.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AmplifyAuthRepository authRepository;
  final AuthCubit authCubit;

  LoginBloc({required this.authRepository, required this.authCubit}) : super(LoginState()) {
    // first name changed
    on<LoginFirstNameChanged>((event, emit) {
      emit(state.copyWith(firstName: event.firstName));
    });
    //last name changed
    on<LoginLastNameChanged>((event, emit) {
      emit(state.copyWith(lastName: event.lastName));
    });
    // email changed
    on<LoginEmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });
    // password changed
    on<LoginPasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    //form submitted
    on<LoginSubmitted>((event, emit) async {
      emit(state.copyWith(formStatus: FormSubmitting()));

      try {
        final userId = await authRepository.signInWithEmailAndPassword(
          email: state.email,
          password: state.password,
        );
        emit(state.copyWith(formStatus: SubmissionSuccess()));

        authCubit.launchSession(AuthCredentials(
          username: state.firstName,
          email: state.email,
          password: state.password,
          userId: userId,
        ));
      } catch (e) {
        emit(state.copyWith(formStatus: SubmissionFailed(exception: Exception(e)))); //problem here
      }
    });
  }
}
