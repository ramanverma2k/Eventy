import 'package:graphql_flutter/graphql_flutter.dart';

/// Database library for Eventy
class Database {
  static final HttpLink _httpLink =
      HttpLink('http://localhost:8080/v1/graphql');

  /// Creates a GraphQL client using [HttpLink].
  static final GraphQLClient client = GraphQLClient(
    link: _httpLink,
    // The default store is the InMemoryStore, which does NOT persist to disk
    cache: GraphQLCache(
      store: InMemoryStore(),
    ),
  );
}
