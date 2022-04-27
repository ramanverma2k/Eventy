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

class AuthenticationStateAuthenticated extends AuthenticationState {
  const AuthenticationStateAuthenticated()
      : super(AuthenticationStatus.authenticated);
}

class AuthenticationStateUnauthenticated extends AuthenticationState {
  const AuthenticationStateUnauthenticated()
      : super(AuthenticationStatus.unauthenticated);
}
