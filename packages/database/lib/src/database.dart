import 'package:database/database.dart';
import 'package:database/src/mutations/create_event.graphql.dart';
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
      if (_result.parsedData!.users.isEmpty) {
        return null;
      } else {
        return _result.parsedData?.users.first;
      }
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

  Future<MutationCreateEvent?> createEvent({
    required String organizer,
    required String title,
    required String description,
    required int category,
    required String image,
    required String bannerImage,
    required Map<String, dynamic> location,
    required String startDate,
    required String endDate,
    required String createdAt,
  }) async {
    final _id = const Uuid().v4();

    final _result = await _client.mutateCreateEvent(
      OptionsMutationCreateEvent(
        variables: VariablesMutationCreateEvent(
          id: _id,
          organizer: organizer,
          name: title,
          description: description,
          image: image,
          banner_image: bannerImage,
          location: location,
          start_date: DateTime.parse(startDate),
          end_date: DateTime.parse(endDate),
          created_at: DateTime.parse(createdAt),
          type_id: category,
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
