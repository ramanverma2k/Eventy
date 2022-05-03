part of 'authentication_bloc.dart';

@immutable

/// AuthenticationEvent abstract class.
abstract class AuthenticationEvent {
  /// Abstract class constructor.
  const AuthenticationEvent();
}

/// This event checks whether the user is authenticated or not on app startup.
///
/// It triggers AuthenticationStatusAuthenticated or
/// AuthenticationStatusUnauthenticated states based on the checks.
class AuthenticationStatusValidate extends AuthenticationEvent {}

/// AuthenticationSignIn is dispatched when the user tries to login.
class AuthenticationSignIn extends AuthenticationEvent {
  /// Initialize the event with username and password.
  const AuthenticationSignIn({
    required this.username,
    required this.password,
  });

  /// Username of the user.
  final String username;

  /// Password of the user
  final String password;
}

/// AuthenticationSignUp is dispatched when the user tries to create an account
class AuthenticationSignUp extends AuthenticationEvent {
  /// Initialize the event with user details.
  const AuthenticationSignUp({
    required this.username,
    required this.email,
    required this.name,
    required this.contactNo,
    required this.password,
  });

  /// Username of the user.
  final String username;

  /// Email of the user.
  final String email;

  /// Full name of the user.
  final String name;

  /// Contact number of the user.
  final String contactNo;

  /// Password of the user.
  final String password;
}

/// AuthenticationSignUpWithGoogle is dispatched when the user tries to
/// create an account using GoogleSignIn
class AuthenticationSignUpWithGoogle extends AuthenticationEvent {}

/// AuthenticationLogoutRequested is dispatched when the user logs out
/// of the application
class AuthenticationLogoutRequested extends AuthenticationEvent {}
