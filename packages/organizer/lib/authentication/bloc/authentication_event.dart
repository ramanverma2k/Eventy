part of 'authentication_bloc.dart';

@immutable

/// AuthenticationEvent abstract class.
abstract class AuthenticationEvent extends Equatable {
  /// Abstract class constructor.
  const AuthenticationEvent();
}

/// This event checks whether the user is authenticated or not on app startup.
///
/// It triggers either AuthenticationStatusAuthenticated or
/// AuthenticationStatusUnauthenticated state based on validation result.
class AuthenticationStatusValidate extends AuthenticationEvent {
  @override
  List<Object?> get props => [];
}

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

  @override
  List<Object?> get props => [username, password];
}

/// AuthenticationSignUp is dispatched when the user tries to create an account
class AuthenticationSignUp extends AuthenticationEvent {
  /// Initialize the event with user details.
  const AuthenticationSignUp({
    required this.username,
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.contactNo,
    required this.image,
    required this.description,
  });

  /// Username of the user.
  final String username;

  /// Email of the user.
  final String email;

  /// Password of the user.
  final String password;

  /// First name of the user.
  final String firstName;

  /// Last name of the user.
  /// This is optional.
  final String? lastName;

  /// Contact number of the user.
  final String contactNo;

  /// Profile picture of the user.
  /// This is optional.
  final String? image;

  /// Profile description of the user.
  /// This is optional.
  final String? description;

  @override
  List<Object?> get props => [
        username,
        email,
        password,
        firstName,
        lastName,
        contactNo,
        image,
        description
      ];
}

/// AuthenticationSignUpWithGoogle is dispatched when the user tries to
/// create an account using GoogleSignIn
class AuthenticationSignUpWithGoogle extends AuthenticationEvent {
  @override
  List<Object?> get props => [];
}

/// AuthenticationLogoutRequested is dispatched when the user logs out
/// of the application
class AuthenticationLogoutRequested extends AuthenticationEvent {
  @override
  List<Object?> get props => [];
}
