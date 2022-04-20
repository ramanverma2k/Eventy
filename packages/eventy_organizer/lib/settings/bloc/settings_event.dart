part of 'settings_bloc.dart';

@immutable
abstract class SettingsEvent {}

class SettingsThemeToggleEvent extends SettingsEvent {
  final bool toggle;

  SettingsThemeToggleEvent({required this.toggle});
}
