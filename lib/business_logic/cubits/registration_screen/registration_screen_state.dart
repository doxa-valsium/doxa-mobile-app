part of 'registration_screen_cubit.dart';

abstract class RegistrationScreenState extends Equatable {
  const RegistrationScreenState();

  @override
  List<Object> get props => [];
}

class RegistrationScreenInitial extends RegistrationScreenState {}

class RegistrationScreenLoading extends RegistrationScreenState {}

class RegistrationScreenSucess extends RegistrationScreenState {}

class RegistrationScreenError extends RegistrationScreenState {
  final String errorMessage;
  const RegistrationScreenError({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}
