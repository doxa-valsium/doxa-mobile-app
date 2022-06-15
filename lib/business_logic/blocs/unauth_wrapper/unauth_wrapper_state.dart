part of 'unauth_wrapper_bloc.dart';

abstract class UnauthWrapperState extends Equatable {
  const UnauthWrapperState();

  @override
  List<Object> get props => [];
}

class OnLoginScreen extends UnauthWrapperState {}

class OnRegistrationScreen extends UnauthWrapperState {}
