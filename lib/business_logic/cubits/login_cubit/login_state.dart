part of 'login_cubit.dart';

enum LoginStatus { initial, loading, sucess, error }

class LoginState extends Equatable {
  final LoginStatus loginStatus;
  const LoginState({required this.loginStatus});
  @override
  List<Object> get props => [loginStatus];
}
