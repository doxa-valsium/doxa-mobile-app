import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/form_submission_status.dart';

class LoginState {
  final String email;
  bool get isValidEmail => email.length > 6;

  final String password;
  bool get isValidPassword => password.length > 6;

  final FormSubmissionStatus? formStatus;

  LoginState({
    this.email = '',
    this.password = '',
    this.formStatus = const InitialFormStatus(),
  });

  LoginState copyWith({
    String? email,
    String? password,
    FormSubmissionStatus? formStatus,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      formStatus: formStatus ?? this.formStatus,
    );
  }
}
