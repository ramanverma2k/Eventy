import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:database/database.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:local_storage_api/local_storage_api.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required this.localStorageApi,
    required this.databaseRepository,
  }) : super(const AuthenticationState(AuthenticationStatus.unknown, null)) {
    on<AuthenticationStatusValidate>(_authenticationValidate);
    on<AuthenticationSignIn>(_authenticationSignIn);
    on<AuthenticationSignUp>(_authenticationSignUp);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
  }

  Future<void> _authenticationValidate(
    AuthenticationStatusValidate event,
    Emitter<AuthenticationState> emit,
  ) async {
    final _userId = localStorageApi.getString('userId');

    final _user = await databaseRepository.getUserById(id: _userId ?? '');

    if (_user?.id != null) {
      emit(
        AuthenticationState(AuthenticationStatus.authenticated, _user),
      );
    } else {
      emit(
        const AuthenticationState(
          AuthenticationStatus.unauthenticated,
          null,
        ),
      );
    }
  }

  Future<void> _authenticationSignIn(
    AuthenticationSignIn event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(const AuthenticationState(AuthenticationStatus.loggingIn, null));

    final _result = await databaseRepository.getUser(
      username: event.username,
      password: event.password,
    );

    if (_result == null) {
      emit(const AuthenticationState(AuthenticationStatus.error, null));
    }

    if (_result!.username == event.username) {
      await localStorageApi.setString('userId', _result.id);

      emit(
        AuthenticationState(
          AuthenticationStatus.authenticated,
          _result,
        ),
      );
    } else {
      emit(
        const AuthenticationState(
          AuthenticationStatus.unauthenticated,
          null,
        ),
      );
    }
  }

  Future<void> _authenticationSignUp(
    AuthenticationSignUp event,
    Emitter<AuthenticationState> emit,
  ) async {
    String? image;

    emit(const AuthenticationState(AuthenticationStatus.signingUp, null));

    if (event.image != null) {
      final storageRef = FirebaseStorage.instance.ref();
      final profileImageRef =
          storageRef.child(event.image!.path.split('/').last);

      await profileImageRef.putFile(event.image!);

      image = await profileImageRef.getDownloadURL().whenComplete(() => null);
    }

    final _result = await databaseRepository.createAdminAccount(
      username: event.username,
      email: event.email,
      password: event.password,
      firstName: event.firstName,
      lastName: event.lastName ?? '',
      contactNo: event.contactNo,
      image: image ?? '',
      description: event.description ?? '',
    );

    if (_result == null) {
      emit(const AuthenticationState(AuthenticationStatus.error, null));
    }

    if (_result != null) {
      await localStorageApi.setString('userId', _result.insert_users_one!.id);

      final _user = await databaseRepository.getUserById(
        id: _result.insert_users_one!.id,
      );

      emit(
        AuthenticationState(AuthenticationStatus.authenticated, _user),
      );
    }
  }

  Future<void> _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await localStorageApi.remove('userId');

    emit(const AuthenticationState(AuthenticationStatus.unauthenticated, null));
  }

  /// LocalStorageApi for handling local storage and state persistence.
  final LocalStorageApi localStorageApi;

  /// DatabaseRepository for handling database operations.
  final DatabaseRepository databaseRepository;
}
