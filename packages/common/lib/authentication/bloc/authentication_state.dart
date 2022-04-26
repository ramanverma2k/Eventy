part of 'authentication_bloc.dart';

enum AuthenticationStatus {
  unknown,
  authenticated,
  unauthenticated,
}

@immutable
abstract class AuthenticationState {
  const AuthenticationState(this.status);

  final AuthenticationStatus status;
}

class AuthenticationInitial extends AuthenticationState {
  const AuthenticationInitial() : super(AuthenticationStatus.unknown);
}

class AuthenticationAuthenticated extends AuthenticationState {
  const AuthenticationAuthenticated()
      : super(AuthenticationStatus.authenticated);
}

class AuthenticationUnauthenticated extends AuthenticationState {
  const AuthenticationUnauthenticated()
      : super(AuthenticationStatus.unauthenticated);
}
