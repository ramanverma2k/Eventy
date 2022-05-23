import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'get_userById.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesQueryGetUserById {
  VariablesQueryGetUserById({required this.id});

  @override
  factory VariablesQueryGetUserById.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryGetUserByIdFromJson(json);

  final String id;

  Map<String, dynamic> toJson() => _$VariablesQueryGetUserByIdToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryGetUserById) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetUserById {
  QueryGetUserById({required this.users, required this.$__typename});

  @override
  factory QueryGetUserById.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUserByIdFromJson(json);

  final List<QueryGetUserById$users> users;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetUserByIdToJson(this);
  int get hashCode {
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$users.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetUserById) || runtimeType != other.runtimeType)
      return false;
    final l$users = users;
    final lOther$users = other.users;
    if (l$users.length != lOther$users.length) return false;
    for (int i = 0; i < l$users.length; i++) {
      final l$users$entry = l$users[i];
      final lOther$users$entry = lOther$users[i];
      if (l$users$entry != lOther$users$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryGetUserById on QueryGetUserById {
  QueryGetUserById copyWith(
          {List<QueryGetUserById$users>? users, String? $__typename}) =>
      QueryGetUserById(
          users: users == null ? this.users : users,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERY_GET_USER_BY_ID = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUserById'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'users'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'id'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_eq'),
                              value: VariableNode(name: NameNode(value: 'id')))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'username'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'email'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'first_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'last_name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'contact_no'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'image'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
QueryGetUserById _parserFnQueryGetUserById(Map<String, dynamic> data) =>
    QueryGetUserById.fromJson(data);

class OptionsQueryGetUserById extends graphql.QueryOptions<QueryGetUserById> {
  OptionsQueryGetUserById(
      {String? operationName,
      required VariablesQueryGetUserById variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_USER_BY_ID,
            parserFn: _parserFnQueryGetUserById);
}

class WatchOptionsQueryGetUserById
    extends graphql.WatchQueryOptions<QueryGetUserById> {
  WatchOptionsQueryGetUserById(
      {String? operationName,
      required VariablesQueryGetUserById variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_USER_BY_ID,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetUserById);
}

class FetchMoreOptionsQueryGetUserById extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetUserById(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryGetUserById variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_GET_USER_BY_ID);
}

extension ClientExtensionQueryGetUserById on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetUserById>> queryGetUserById(
          OptionsQueryGetUserById options) async =>
      await this.query(options);
  graphql.ObservableQuery<QueryGetUserById> watchQueryGetUserById(
          WatchOptionsQueryGetUserById options) =>
      this.watchQuery(options);
  void writeQueryGetUserById(
          {required QueryGetUserById data,
          required VariablesQueryGetUserById variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERY_GET_USER_BY_ID),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  QueryGetUserById? readQueryGetUserById(
      {required VariablesQueryGetUserById variables, bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_GET_USER_BY_ID),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : QueryGetUserById.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetUserById$users {
  QueryGetUserById$users(
      {required this.id,
      required this.username,
      required this.email,
      required this.first_name,
      this.last_name,
      required this.contact_no,
      this.image,
      this.description,
      required this.$__typename});

  @override
  factory QueryGetUserById$users.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUserById$usersFromJson(json);

  final String id;

  final String username;

  final String email;

  final String first_name;

  final String? last_name;

  final String contact_no;

  final String? image;

  final String? description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetUserById$usersToJson(this);
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$email = email;
    final l$first_name = first_name;
    final l$last_name = last_name;
    final l$contact_no = contact_no;
    final l$image = image;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$username,
      l$email,
      l$first_name,
      l$last_name,
      l$contact_no,
      l$image,
      l$description,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetUserById$users) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$first_name = first_name;
    final lOther$first_name = other.first_name;
    if (l$first_name != lOther$first_name) return false;
    final l$last_name = last_name;
    final lOther$last_name = other.last_name;
    if (l$last_name != lOther$last_name) return false;
    final l$contact_no = contact_no;
    final lOther$contact_no = other.contact_no;
    if (l$contact_no != lOther$contact_no) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryGetUserById$users on QueryGetUserById$users {
  QueryGetUserById$users copyWith(
          {String? id,
          String? username,
          String? email,
          String? first_name,
          String? Function()? last_name,
          String? contact_no,
          String? Function()? image,
          String? Function()? description,
          String? $__typename}) =>
      QueryGetUserById$users(
          id: id == null ? this.id : id,
          username: username == null ? this.username : username,
          email: email == null ? this.email : email,
          first_name: first_name == null ? this.first_name : first_name,
          last_name: last_name == null ? this.last_name : last_name(),
          contact_no: contact_no == null ? this.contact_no : contact_no,
          image: image == null ? this.image : image(),
          description: description == null ? this.description : description(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
