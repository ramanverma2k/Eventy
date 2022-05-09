import 'package:bloc_test/bloc_test.dart';
import 'package:eventy_organizer/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ThemeBloc', () {
    test('initial state is light theme', () {
      expect(ThemeBloc().state.brightness, equals(Brightness.light));
    });

    blocTest<ThemeBloc, ThemeData>(
      'emits [darkTheme] when ThemeToggle is called',
      build: ThemeBloc.new,
      act: (bloc) => bloc.add(ThemeToggle()),
      expect: () => [
        ThemeData(
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            foregroundColor: Colors.black,
          ),
          brightness: Brightness.dark,
        ),
      ],
    );
  });
}
