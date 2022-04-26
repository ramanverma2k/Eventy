import 'package:database/database.dart';
import 'package:database/src/graphql/create_user.graphql.dart';
import 'package:uuid/uuid.dart';

/// Base Query class containing methods for Querying data.
abstract class MutationBase {
  ///
  Future<void> createUser() async {}
}

/// Query class for implementing [MutationBase] methods.
class Mutate extends MutationBase {
  @override
  Future<bool> createUser() async {
    final _client = Database.client;
    final _uuid = const Uuid().v4();

    final result = await _client.mutateCreateUser(
      OptionsMutationCreateUser(
        variables: VariablesMutationCreateUser(
          id: _uuid,
          username: 'test123',
          password: 'abc123',
          email: 'androgv@gmail.com',
          first_name: 'Raman',
          last_name: 'Verma',
          contact_no: '8795785278',
          image:
              'https://images.unsplash.com/photo-1650831174246-7e7b2e3b77e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
          description: 'Test account',
        ),
      ),
    );

    if (result.hasException) {
      return false;
    } else {
      return true;
    }
  }
}
