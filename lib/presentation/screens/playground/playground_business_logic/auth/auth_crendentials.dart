//hangs on crendentials

class AuthCredentials {
  final String? firstName;
  final String? lastName;
  final String email;
  final String password;
  String? userId; // only on login and confirm

  AuthCredentials({
    this.firstName,
    this.lastName,
    required this.email,
    required this.password,
    this.userId,
  });
}
