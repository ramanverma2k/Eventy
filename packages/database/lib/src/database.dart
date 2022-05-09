import 'package:database/database.dart';

///
/// Database repository for communicating with backend
/// ---
class DatabaseRepository {
  /// {@macro database}
  const DatabaseRepository({required GraphQLClient client}) : _client = client;

  /// GraphQL client.
  final GraphQLClient _client;
}
