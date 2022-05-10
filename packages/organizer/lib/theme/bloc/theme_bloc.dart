import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  ThemeBloc() : super(_lightTheme) {
    on<ThemeToggle>(
      (event, emit) =>
          emit(state.brightness == Brightness.light ? _darkTheme : _lightTheme),
    );
  }

  static final _lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: TextStyle(
        fontSize: 13,
        color: Colors.grey,
        fontWeight: FontWeight.w600,
      ),
    ),
  );

  static final _darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: TextStyle(
        fontSize: 13,
        color: Colors.grey,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
