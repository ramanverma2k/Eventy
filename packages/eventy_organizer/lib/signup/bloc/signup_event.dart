part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class SignupEventStarted extends SignupEvent {
  SignupEventStarted({
    required this.username,
    required this.password,
    required this.first_name,
    this.last_name,
    required this.email,
    required this.contact_no,
    this.description,
  });

  final String username;
  final String password;
  final String first_name;
  final String? last_name;
  final String email;
  final String contact_no;
  final String? description;
}

class SignupEventFinished extends SignupEvent {}

class SignupEventFailed extends SignupEvent {}
