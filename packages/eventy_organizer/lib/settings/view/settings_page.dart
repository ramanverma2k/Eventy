import 'package:eventy_organizer/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphQLConsumer(builder: (GraphQLClient client) {
      return BlocProvider<SettingsBloc>(
        create: (context) => SettingsBloc(client: client),
        child: const SettingsView(),
      );
    });
  }
}
