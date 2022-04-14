part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginInProgress extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginRetry extends LoginState {}

class LoginFailed extends LoginState {}
