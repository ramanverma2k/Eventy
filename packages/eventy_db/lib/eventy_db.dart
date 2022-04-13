library eventy_db;

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class DatabaseConfig {
  static final HttpLink httpLink = HttpLink("http://localhost:8080/v1/graphql");

  static final ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    ),
  );
}
