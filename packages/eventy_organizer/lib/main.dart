import 'dart:async';
import 'dart:developer' as developer;

import 'package:eventy_db/eventy_db.dart';
import 'package:eventy_organizer/login/login.dart';
import 'package:eventy_organizer/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
        () async => runApp(const MyApp()),
        blocObserver: MyAppBlocObserver(),
      );
    },
    (error, stackTrace) =>
        developer.log(error.toString(), stackTrace: stackTrace),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: DatabaseConfig.client,
      child: const MaterialApp(
        home: LoginPage(),
      ),
    );
  }
}
