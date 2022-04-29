abstract class LoginEvent {}

class LoginFirstNameChanged extends LoginEvent {
  final String firstName;
  LoginFirstNameChanged({
    required this.firstName,
  });
}

class LoginLastNameChanged extends LoginEvent {
  final String lastName;
  LoginLastNameChanged({
    required this.lastName,
  });
}

class LoginEmailChanged extends LoginEvent {
  final String email;
  LoginEmailChanged({
    required this.email,
  });
}

class LoginPasswordChanged extends LoginEvent {
  final String password;
  LoginPasswordChanged({
    required this.password,
  });
}

class LoginSubmitted extends LoginEvent {}
