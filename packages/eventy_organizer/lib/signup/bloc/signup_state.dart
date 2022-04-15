part of 'signup_bloc.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupInProgress extends SignupState {}

class SignupSuccess extends SignupState {}

class SignupComplete extends SignupState {}

class SignupFailed extends SignupState {}
