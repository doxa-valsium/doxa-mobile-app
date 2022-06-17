part of 'email_verification_screen_cubit.dart';

abstract class EmailVerificationScreenState extends Equatable {
  const EmailVerificationScreenState();

  @override
  List<Object> get props => [];
}

class EmailVerificationSent extends EmailVerificationScreenState {}

class EmailVerificationSending extends EmailVerificationScreenState {}

class EmailVerificationScreenError extends EmailVerificationScreenState {
  final String errorMessage;

  const EmailVerificationScreenError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
