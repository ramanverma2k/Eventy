import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final GraphQLClient client;
  SettingsBloc({required this.client}) : super(SettingsInitial()) {
    on<SettingsThemeToggleEvent>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();

      if (event.toggle) {
        prefs.setBool('darkMode', true);
      }
    });
  }
}
