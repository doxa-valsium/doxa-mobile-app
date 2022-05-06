abstract class SignUpEvent {}

class SignUpFirstNameChanged extends SignUpEvent {
  final String firstName;
  SignUpFirstNameChanged({
    required this.firstName,
  });
}

class SignUpLastNameChanged extends SignUpEvent {
  final String lastName;
  SignUpLastNameChanged({
    required this.lastName,
  });
}

class SignUpEmailChanged extends SignUpEvent {
  final String email;

  SignUpEmailChanged({required this.email});
}

class SignUpPasswordChanged extends SignUpEvent {
  final String password;

  SignUpPasswordChanged({required this.password});
}

class SignUpSubmitted extends SignUpEvent {}
