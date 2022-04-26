// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:consumer/authentication/authentication.dart';
import 'package:consumer/home/home.dart';
import 'package:consumer/l10n/l10n.dart';
import 'package:consumer/repository/shared_preferences_store.dart';
import 'package:database/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.sharedPreferences}) : super(key: key);

  final SharedPreferences sharedPreferences;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: SharedPreferencesStore(instance: sharedPreferences),
      child: BlocProvider(
        create: (context) => AuthenticationBloc(
          queryRepository: Query(),
          mutatationRepository: Mutate(),
          sharedPreferencesStore:
              RepositoryProvider.of<SharedPreferencesStore>(context),
        )..add(AuthenticationStatusValidate()),
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            return const HomePage();
          }

          if (state.status == AuthenticationStatus.unauthenticated) {
            return const LoginPage();
          }

          return const Scaffold(
            body: Center(child: CircularProgressIndicator.adaptive()),
          );
        },
      ),
    );
  }
}
