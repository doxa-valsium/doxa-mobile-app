part of 'unauth_wrapper_bloc.dart';

abstract class UnauthWrapperEvent extends Equatable {
  const UnauthWrapperEvent();

  @override
  List<Object> get props => [];
}

class NavigateToLogin extends UnauthWrapperEvent {}

class NavigateToRegistration extends UnauthWrapperEvent {}
