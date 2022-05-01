import 'package:doxa_mobile_app/data/repositories/auth_repository/amplify_auth_repository.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/auth/auth_cubit.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/form_submission_status.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/signup/signup_event.dart';
import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/signup/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AmplifyAuthRepository authRepository;
  final AuthCubit authCubit;

  SignUpBloc({required this.authRepository, required this.authCubit}) : super(SignUpState()) {
    // first name changed
    on<SignUpFirstNameChanged>((event, emit) {
      emit(state.copyWith(firstName: event.firstName));
    });
    //last name changed
    on<SignUpLastNameChanged>((event, emit) {
      emit(state.copyWith(lastName: event.lastName));
    });
    on<SignUpEmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email));
    });
    on<SignUpPasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
    on<SignUpSubmitted>((event, emit) async {
      emit(state.copyWith(formStatus: FormSubmitting()));

      try {
        await authRepository.signUpWithEmailAndPassword(firstName: state.firstName, lastName: state.lastName, email: state.email, password: state.password);

        emit(state.copyWith(formStatus: SubmissionSuccess()));

        authCubit.showConfirmSignUp(
          firstName: state.firstName,
          lastName: state.lastName,
          email: state.email,
          password: state.password,
        );
      } catch (e) {
        emit(state.copyWith(formStatus: SubmissionFailed(exception: Exception(e)))); //problem here
      }
    });
  }
}
