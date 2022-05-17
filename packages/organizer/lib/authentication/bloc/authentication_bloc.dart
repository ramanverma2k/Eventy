import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:local_storage_api/local_storage_api.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required this.localStorageApi})
      : super(const AuthenticationState(AuthenticationStatus.unknown)) {
    on<AuthenticationStatusValidate>(_authenticationValidate);
    on<AuthenticationSignIn>(_authenticationSignIn);
    on<AuthenticationSignUp>(_authenticationSignUp);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
  }

  Future<void> _authenticationValidate(
    AuthenticationStatusValidate event,
    Emitter<AuthenticationState> emit,
  ) async {
    // Only for testing purposes
    const _user = 'null';
    if (_user == 'null') {
      emit(const AuthenticationState(AuthenticationStatus.authenticated));
    } else {
      emit(const AuthenticationState(AuthenticationStatus.unauthenticated));
    }
  }

  Future<void> _authenticationSignIn(
    AuthenticationSignIn event,
    Emitter<AuthenticationState> emit,
  ) async {
    if (event.username.isNotEmpty && event.password.isNotEmpty) {
      emit(const AuthenticationState(AuthenticationStatus.authenticated));
    } else {
      emit(const AuthenticationState(AuthenticationStatus.unauthenticated));
    }
  }

  Future<void> _authenticationSignUp(
    AuthenticationSignUp event,
    Emitter<AuthenticationState> emit,
  ) async {}

  Future<void> _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await localStorageApi.remove('user');

    emit(const AuthenticationState(AuthenticationStatus.unauthenticated));
  }

  // Reserved for future use.
  // Future<void> _authenticationSignUpWithGoogle(
  //   AuthenticationSignUpWithGoogle event,
  //   Emitter<AuthenticationState> emit,
  // ) async {}

  /// LocalStorageApi for handling local storage and state persistence.
  final LocalStorageApi localStorageApi;
}
