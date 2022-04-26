/// Base Query class containing methods for Querying data.
abstract class QueryBase {
  ///
  void getUserByEmailOrUsername() {}
}

/// Query class for implementing [QueryBase] methods.
class Query extends QueryBase {
  @override
  void getUserByEmailOrUsername() {}
}
