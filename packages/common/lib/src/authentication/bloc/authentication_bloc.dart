import 'package:bloc/bloc.dart';
import 'package:common/common.dart';
import 'package:database/database.dart';
import 'package:flutter/widgets.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

///
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  ///
  AuthenticationBloc({
    required this.queryRepository,
    required this.mutationRepository,
    required this.sharedPreferencesStore,
  }) : super(const AuthenticationState(AuthenticationStatus.unknown)) {
    on<AuthenticationStatusValidate>(_authenticationValidate);
    on<AuthenticationSignIn>(_authenticationSignIn);
    on<AuthenticationSignUp>(_authenticationSignUp);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
  }

  Future<void> _authenticationValidate(
    AuthenticationStatusValidate event,
    Emitter<AuthenticationState> emit,
  ) async {
    final _user = sharedPreferencesStore.getValue('user');

    if (_user != null) {
      emit(const AuthenticationState(AuthenticationStatus.authenticated));
    } else {
      emit(const AuthenticationState(AuthenticationStatus.unauthenticated));
    }
  }

  Future<void> _authenticationSignIn(
    AuthenticationSignIn event,
    Emitter<AuthenticationState> emit,
  ) async {
    final _user =
        await Query().getUserByEmailOrUsername(event.username, event.password);
    if (_user.username == event.username || _user.email == event.username) {
      await sharedPreferencesStore.setValue('user', _user.toString());

      emit(const AuthenticationState(AuthenticationStatus.authenticated));
    } else {
      emit(const AuthenticationState(AuthenticationStatus.unauthenticated));
    }
  }

  Future<void> _authenticationSignUp(
    AuthenticationSignUp event,
    Emitter<AuthenticationState> emit,
  ) async {
    final _user = await Mutate().createUser(
      event.username,
      event.email,
      event.name,
      event.contactNo,
      event.password,
    );
    if (_user.email == event.email &&
        _user.username == event.username &&
        _user.first_name == event.name) {
      await sharedPreferencesStore.setValue('user', _user.toString());

      emit(const AuthenticationState(AuthenticationStatus.authenticated));
    } else {
      emit(const AuthenticationState(AuthenticationStatus.unauthenticated));
    }
  }

  Future<void> _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await sharedPreferencesStore.removeValue('user');

    emit(const AuthenticationState(AuthenticationStatus.unauthenticated));
  }

  /// Mutation Repository to create and delete data in database.
  final Mutate mutationRepository;

  /// Query Repository for fetching data from database.
  final Query queryRepository;

  /// SharedPreferencesStore for local storage and state persistence.
  final SharedPreferencesStore sharedPreferencesStore;
}
