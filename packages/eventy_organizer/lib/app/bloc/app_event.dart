part of 'app_bloc.dart';

@immutable
abstract class AppEvent {}

class Start extends AppEvent {}

class ToggleTheme extends AppEvent {}
