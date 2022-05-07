import 'package:graphql/client.dart';

/// {@template database}
/// Database package for communicating with backend
/// ---
/// {@endtemplate}
class Database {
  /// {@macro database}
  /// Creates a GraphQL client using [HttpLink] and [GraphQLCache].
  static final GraphQLClient client = GraphQLClient(
    /// [HttpLink] is used in [GraphQLClient] to communicate with GraphQL server
    link: HttpLink('http://localhost:8080/v1/graphql'),
    // The default store is the InMemoryStore, which does NOT persist to disk
    cache: GraphQLCache(),
  );
}
