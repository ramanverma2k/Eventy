part of 'authentication_bloc.dart';

enum AuthenticationStatus {
  // User status is unknown.
  unknown,
  // User is authenticated.
  authenticated,
  // User is not authenticated.
  unauthenticated,
  // User is Logging in.
  loggingIn,
  // User is Signing up.
  signingUp,
  // User status is error.
  error,
}

/// The [AuthenticationState] state class.
/// This class is used to represent the state of the [AuthenticationBloc].
@immutable
class AuthenticationState extends Equatable {
  /// Creates a [AuthenticationState] instance with
  /// [AuthenticationStatus.unknown] state.
  const AuthenticationState(this.state);

  /// AuthenticationState status of the [AuthenticationBloc].
  final AuthenticationStatus state;

  /// Copy with method that returns a new [AuthenticationState]
  AuthenticationState copyWith({
    required AuthenticationStatus state,
  }) {
    return AuthenticationState(
      state,
    );
  }

  @override
  List<Object> get props => [state];

  /// Returns a string representation of the [AuthenticationState].
  /// This method is used by [toString] method.
  @override
  String toString() => 'AuthenticationState { status: $state }';
}
