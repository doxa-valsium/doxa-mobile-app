//hangs on crendentials

class AuthCredentials {
  final String username;
  final String email;
  final String password;
  String? userId; // only on login and confirm
  
  AuthCredentials({
    required this.username,
    required this.email,
    required this.password,
    this.userId,
  });
}
