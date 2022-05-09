import 'package:database/database.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockGraphQLClient extends Mock implements GraphQLClient {}

void main() {
  late GraphQLClient _client;

  setUp(
    () {
      _client = MockGraphQLClient();
    },
  );

  group('Database', () {
    test('can be instantiated', () {
      expect(DatabaseRepository(client: _client), isNotNull);
    });
  });
}
