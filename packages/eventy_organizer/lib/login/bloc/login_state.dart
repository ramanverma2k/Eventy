part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginInProgress extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginComplete extends LoginState {}

class LoginFailed extends LoginState {
  final String message;

  LoginFailed({required this.message});
}
