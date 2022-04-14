import 'package:eventy_db/eventy_db.dart';
import 'package:eventy_organizer/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: DatabaseConfig.client,
      child: const MaterialApp(
        home: LandingPage(),
      ),
    );
  }
}
