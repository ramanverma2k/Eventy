import 'package:database/database.dart';
import 'package:database/src/graphql/all_count.graphql.dart';

/// Query class.
class Query {
  /// Function.
  static Future<QueryAllCount?> getAllCount() async {
    final client = Database.client;

    final results = await client.queryAllCount();

    return results.parsedData;
  }
}
