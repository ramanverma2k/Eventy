part of 'authentication_bloc.dart';

/// Possible states of the [AuthenticationBloc].
enum AuthenticationStatus {
  /// Authentication state is unknown.
  unknown,

  /// User is authenticated.
  authenticated,

  /// User is not authenticated.
  unauthenticated,
}

/// The [AuthenticationState] state class.
/// This class is used to represent the state of the [AuthenticationBloc].
@immutable
class AuthenticationState {
  /// Creates a [AuthenticationState] instance with
  /// [AuthenticationStatus.unknown] state.
  const AuthenticationState(this.status);

  /// AuthenticationState status of the [AuthenticationBloc].
  final AuthenticationStatus status;

  /// Create copy with method
  AuthenticationState copyWith({
    required AuthenticationStatus status,
  }) {
    return AuthenticationState(
      status,
    );
  }

  /// Returns a string representation of the [AuthenticationState].
  /// This method is used by [toString] method.

  @override
  String toString() => 'AuthenticationState { status: $status }';
}
