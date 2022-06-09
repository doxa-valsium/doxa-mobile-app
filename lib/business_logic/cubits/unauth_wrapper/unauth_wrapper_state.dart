import 'package:equatable/equatable.dart';

enum ScreenStatus { initial, loading, sucess }

abstract class UnAuthWrapperState extends Equatable {
  const UnAuthWrapperState();
  @override
  List<Object> get props => [];
}

class OnLoginScreen extends UnAuthWrapperState {
  final ScreenStatus screenStatus;
  const OnLoginScreen({required this.screenStatus});
  @override
  List<Object> get props => [screenStatus];
}

class OnRegistrationScreen extends UnAuthWrapperState {
  final ScreenStatus screenStatus;
  final Map<String, dynamic> registrationData;
  const OnRegistrationScreen({required this.registrationData, required this.screenStatus});
  @override
  List<Object> get props => [registrationData];
}

class UnAuthWrapperError extends UnAuthWrapperState {
  final String errorMessage;
  const UnAuthWrapperError({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}
