import 'package:database/database.dart';
import 'package:database/src/queries/queries.dart';
import 'package:uuid/uuid.dart';

///
/// Database repository for communicating with backend
/// ---
class DatabaseRepository {
  /// {@macro database}
  const DatabaseRepository({required GraphQLClient client}) : _client = client;

  /// GraphQL client.
  final GraphQLClient _client;

  /// Query for Signing in.
  Future<QueryGetUser$users?> getUser(
      {required String username, required String password}) async {
    final _result = await _client.queryGetUser(
      OptionsQueryGetUser(
        variables:
            VariablesQueryGetUser(username: username, password: password),
      ),
    );

    if (!_result.hasException) {
      return _result.parsedData?.users.first;
    } else {
      return null;
    }
  }

  /// Mutation for creating an account.
  Future<MutationCreateAdminAccount?> createAdminAccount({
    required String firstName,
    required String lastName,
    required String username,
    required String email,
    required String password,
    required String contactNo,
    required String image,
    required String description,
  }) async {
    final _id = const Uuid().v4();

    final _result = await _client.mutateCreateAdminAccount(
      OptionsMutationCreateAdminAccount(
        variables: VariablesMutationCreateAdminAccount(
          id: _id,
          username: username,
          password: password,
          email: email,
          first_name: firstName,
          last_name: lastName,
          contact_no: contactNo,
          image: image,
          description: description,
        ),
      ),
    );

    if (!_result.hasException) {
      return _result.parsedData;
    } else {
      return null;
    }
  }
}
