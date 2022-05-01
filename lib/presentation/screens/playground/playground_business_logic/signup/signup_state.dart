import 'package:doxa_mobile_app/presentation/screens/playground/playground_business_logic/form_submission_status.dart';

class SignUpState {
  final String firstName;
  bool get isValidFirstName => firstName.length > 3;

  final String lastName;
  bool get isValidLastName => lastName.length > 3;

  final String email;
  bool get isValidEmail => email.contains('@');

  final String password;
  bool get isValidPassword => password.length > 6;

  final FormSubmissionStatus formStatus;

  SignUpState({
    this.firstName = '',
    this.lastName = '',
    this.email = '',
    this.password = '',
    this.formStatus = const InitialFormStatus(),
  });

  SignUpState copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    FormSubmissionStatus? formStatus,
  }) {
    return SignUpState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      formStatus: formStatus ?? this.formStatus,
    );
  }
}
