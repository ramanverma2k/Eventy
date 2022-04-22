part of 'app_bloc.dart';

@immutable
abstract class AppState {
  static final ThemeData _theme = SettingsModel.themeData;

  ThemeData get themeData => _theme;
}

class AppInitial extends AppState {
  @override
  final ThemeData themeData = SettingsModel.themeData;
}

class ThemeToggled extends AppState {
  @override
  final ThemeData themeData = SettingsModel.themeData;
}

class AppAuthenticated extends AppState {}

class AppUnAuthenticated extends AppState {}
