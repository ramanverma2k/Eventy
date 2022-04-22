part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginEventStarted extends LoginEvent {
  LoginEventStarted({required this.username, required this.password});

  final String username;
  final String password;
}

class LoginEventFinished extends LoginEvent {}

class LoginEventFailed extends LoginEvent {}
