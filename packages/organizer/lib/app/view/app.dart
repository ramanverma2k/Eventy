// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:database/database.dart';
import 'package:eventy_organizer/authentication/authentication.dart';
import 'package:eventy_organizer/create_event/create_event.dart';
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
              databaseRepository: context.read<DatabaseRepository>(),
            )..add(AuthenticationStatusValidate()),
          ),
          BlocProvider<CreateEventBloc>(
            create: (context) => CreateEventBloc(
              localStorageApi: context.read<LocalStorageApi>(),
              databaseRepository: context.read<DatabaseRepository>(),
            ),
          )
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, themeData) {
        return MaterialApp(
          navigatorKey: _navigatorKey,
          theme: themeData,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          builder: (context, child) {
            return BlocListener<AuthenticationBloc, AuthenticationState>(
              listener: (context, state) {
                switch (state.state) {
                  case AuthenticationStatus.authenticated:
                    _navigator.pushAndRemoveUntil<void>(
                      HomeView.route(),
                      (route) => false,
                    );
                    break;
                  case AuthenticationStatus.unauthenticated:
                    _navigator.pushAndRemoveUntil<void>(
                      LoginView.route(),
                      (route) => false,
                    );
                    break;
                  case AuthenticationStatus.unknown:
                    context
                        .read<AuthenticationBloc>()
                        .add(AuthenticationStatusValidate());
                    break;
                }
              },
              child: child,
            );
          },
          onGenerateRoute: (_) => SplashPage.route(),
        );
      },
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator.adaptive()),
    );
  }
}
