import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:eventy_organizer/models/settings_model.dart';
import 'package:eventy_organizer/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<Start>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2), () async {
        final _prefs = await SharedPreferences.getInstance();

        if (_prefs.getBool('darkMode') != null &&
            _prefs.getBool('darkMode') == true) {
          SettingsModel.toggleTheme();
          emit(ThemeToggled());
        }

        if (_prefs.containsKey('user')) {
          final User _user = User.fromJson(
            jsonDecode(_prefs.getString('user')!),
          );

          GetIt.I.registerSingleton(_user, instanceName: "user");

          if (Uuid.isValidUUID(fromString: _user.id)) {
            emit(AppAuthenticated());
          }
        } else {
          emit(AppUnAuthenticated());
        }
      });
    });

    on<ToggleTheme>(
      (event, emit) async {
        final _prefs = await SharedPreferences.getInstance();

        SettingsModel.toggleTheme();

        await _prefs.setBool(
            'darkMode', SettingsModel.themeData.brightness == Brightness.dark);
        emit(ThemeToggled());
      },
    );
  }
}
