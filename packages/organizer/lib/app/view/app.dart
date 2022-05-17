// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:database/database.dart';
import 'package:eventy_organizer/authentication/authentication.dart';
import 'package:eventy_organizer/home/home.dart';
import 'package:eventy_organizer/l10n/l10n.dart';
import 'package:eventy_organizer/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:local_storage_api/local_storage_api.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.sharedPreferences,
    required this.graphqlClient,
  }) : super(key: key);

  final SharedPreferences sharedPreferences;
  final GraphQLClient graphqlClient;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => LocalStorageApi(plugin: sharedPreferences),
        ),
        RepositoryProvider(
          create: (context) => DatabaseRepository(client: graphqlClient),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeBloc(),
          ),
          BlocProvider(
            create: (context) => AuthenticationBloc(
              localStorageApi: context.read<LocalStorageApi>(),
            ),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, themeData) {
        return MaterialApp(
          theme: themeData,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              switch (state.state) {
                case AuthenticationStatus.unknown:
                  context
                      .read<AuthenticationBloc>()
                      .add(AuthenticationStatusValidate());
                  break;
                case AuthenticationStatus.authenticated:
                  return const HomeView();
                case AuthenticationStatus.unauthenticated:
                  return Scaffold(
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'You are not logged in',
                            style: TextStyle(fontSize: 24),
                          ),
                          ElevatedButton(
                            child: const Text('Login'),
                            onPressed: () =>
                                context.read<AuthenticationBloc>().add(
                                      const AuthenticationSignIn(
                                        username: 'admin',
                                        password: 'admin',
                                      ),
                                    ),
                          ),
                        ],
                      ),
                    ),
                  );
              }
              return const CircularProgressIndicator();
            },
          ),
        );
      },
    );
  }
}
