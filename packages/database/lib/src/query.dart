import 'package:database/database.dart';
import 'package:database/src/graphql/get_user.graphql.dart';

/// Base Query class containing methods for Querying data.
abstract class QueryBase {
  ///
  Future<void> getUserByEmailOrUsername(
    String username,
    String password,
  ) async {}
}

/// Query class for implementing [QueryBase] methods.
class Query extends QueryBase {
  @override
  Future<QueryGetUser$users> getUserByEmailOrUsername(
    String username,
    String password,
  ) async {
    final _client = Database.client;

    final result = await _client.queryGetUser(
      OptionsQueryGetUser(
        variables: VariablesQueryGetUser(
          username: username,
          password: password,
          email: username,
        ),
      ),
    );

    if (result.hasException) {
      throw Exception('Encountered an error while validating user info');
    } else {
      return result.parsedData!.users.first;
    }
  }
}
