import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:doxa_mobile_app/business_logic/blocs/auth_bloc/auth.state.dart';
import 'package:doxa_mobile_app/business_logic/blocs/auth_bloc/auth_event.dart';
import 'package:doxa_mobile_app/data/repositories/auth_repository/auth_repository.dart';
import 'package:doxa_mobile_app/data/repositories/user_repository/user_repository.dart';
import 'package:doxa_mobile_app/logger.dart';
import 'package:doxa_mobile_app/models/user.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required AuthRepository authenticationRepository,
    required UserRepository userRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        super(const AuthenticationState.unknown()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
    _authenticationStatusSubscription = _authenticationRepository.status.listen(
      (status) => add(AuthenticationStatusChanged(status)),
    );
  }

  final AuthRepository _authenticationRepository;
  final UserRepository _userRepository;
  late StreamSubscription<AuthenticationStatus> _authenticationStatusSubscription;

  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    _authenticationRepository.dispose();
    return super.close();
  }

  void _onAuthenticationStatusChanged(
    AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthenticationState.unauthenticated());
      case AuthenticationStatus.authenticated:
        final user = await _tryGetUser();
        return emit(user != null ? AuthenticationState.authenticated(user) : const AuthenticationState.unauthenticated());
      default:
        return emit(const AuthenticationState.unknown());
    }
  }

  void _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) {
    _authenticationRepository.signOut();
  }

  Future<User?> _tryGetUser() async {
    try {
      final user = await _userRepository.getUser();
      logger.d('User: $user');
      return user;
    } catch (_) {
      return null;
    }
  }
}
