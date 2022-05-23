import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'create_user_account.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesMutationCreateAccount {
  VariablesMutationCreateAccount(
      {required this.id,
      required this.username,
      required this.password,
      required this.email,
      required this.first_name,
      this.last_name,
      required this.contact_no,
      this.image,
      this.description});

  @override
  factory VariablesMutationCreateAccount.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationCreateAccountFromJson(json);

  final String id;

  final String username;

  final String password;

  final String email;

  final String first_name;

  final String? last_name;

  final String contact_no;

  final String? image;

  final String? description;

  Map<String, dynamic> toJson() => _$VariablesMutationCreateAccountToJson(this);
  int get hashCode {
    final l$id = id;
    final l$username = username;
    final l$password = password;
    final l$email = email;
    final l$first_name = first_name;
    final l$last_name = last_name;
    final l$contact_no = contact_no;
    final l$image = image;
    final l$description = description;
    return Object.hashAll([
      l$id,
      l$username,
      l$password,
      l$email,
      l$first_name,
      l$last_name,
      l$contact_no,
      l$image,
      l$description
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationCreateAccount) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
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
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class MutationCreateAccount {
  MutationCreateAccount({this.insert_users_one, required this.$__typename});

  @override
  factory MutationCreateAccount.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateAccountFromJson(json);

  final MutationCreateAccount$insertUsersOne? insert_users_one;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationCreateAccountToJson(this);
  int get hashCode {
    final l$insert_users_one = insert_users_one;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insert_users_one, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateAccount) || runtimeType != other.runtimeType)
      return false;
    final l$insert_users_one = insert_users_one;
    final lOther$insert_users_one = other.insert_users_one;
    if (l$insert_users_one != lOther$insert_users_one) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationCreateAccount on MutationCreateAccount {
  MutationCreateAccount copyWith(
          {MutationCreateAccount$insertUsersOne? Function()? insert_users_one,
          String? $__typename}) =>
      MutationCreateAccount(
          insert_users_one: insert_users_one == null
              ? this.insert_users_one
              : insert_users_one(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const MUTATION_CREATE_ACCOUNT = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateAccount'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'username')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'password')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'email')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'first_name')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'last_name')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'contact_no')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'image')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'description')),
            type: NamedTypeNode(
                name: NameNode(value: 'String'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insert_users_one'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'id'),
                        value: VariableNode(name: NameNode(value: 'id'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'username'),
                        value: VariableNode(name: NameNode(value: 'username'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'password'),
                        value: VariableNode(name: NameNode(value: 'password'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'email'),
                        value: VariableNode(name: NameNode(value: 'email'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'first_name'),
                        value:
                            VariableNode(name: NameNode(value: 'first_name'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'last_name'),
                        value:
                            VariableNode(name: NameNode(value: 'last_name'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'contact_no'),
                        value:
                            VariableNode(name: NameNode(value: 'contact_no'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'image'),
                        value: VariableNode(name: NameNode(value: 'image'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'description'),
                        value:
                            VariableNode(name: NameNode(value: 'description'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'is_admin'),
                        value: BooleanValueNode(value: false))
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
MutationCreateAccount _parserFnMutationCreateAccount(
        Map<String, dynamic> data) =>
    MutationCreateAccount.fromJson(data);
typedef OnMutationCompletedMutationCreateAccount = FutureOr<void> Function(
    dynamic, MutationCreateAccount?);

class OptionsMutationCreateAccount
    extends graphql.MutationOptions<MutationCreateAccount> {
  OptionsMutationCreateAccount(
      {String? operationName,
      required VariablesMutationCreateAccount variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationCreateAccount? onCompleted,
      graphql.OnMutationUpdate<MutationCreateAccount>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationCreateAccount(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_ACCOUNT,
            parserFn: _parserFnMutationCreateAccount);

  final OnMutationCompletedMutationCreateAccount? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationCreateAccount
    extends graphql.WatchQueryOptions<MutationCreateAccount> {
  WatchOptionsMutationCreateAccount(
      {String? operationName,
      required VariablesMutationCreateAccount variables,
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
            document: MUTATION_CREATE_ACCOUNT,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationCreateAccount);
}

extension ClientExtensionMutationCreateAccount on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationCreateAccount>> mutateCreateAccount(
          OptionsMutationCreateAccount options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationCreateAccount> watchMutationCreateAccount(
          WatchOptionsMutationCreateAccount options) =>
      this.watchMutation(options);
}

@JsonSerializable(explicitToJson: true)
class MutationCreateAccount$insertUsersOne {
  MutationCreateAccount$insertUsersOne(
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
  factory MutationCreateAccount$insertUsersOne.fromJson(
          Map<String, dynamic> json) =>
      _$MutationCreateAccount$insertUsersOneFromJson(json);

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

  Map<String, dynamic> toJson() =>
      _$MutationCreateAccount$insertUsersOneToJson(this);
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
    if (!(other is MutationCreateAccount$insertUsersOne) ||
        runtimeType != other.runtimeType) return false;
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

extension UtilityExtensionMutationCreateAccount$insertUsersOne
    on MutationCreateAccount$insertUsersOne {
  MutationCreateAccount$insertUsersOne copyWith(
          {String? id,
          String? username,
          String? email,
          String? first_name,
          String? Function()? last_name,
          String? contact_no,
          String? Function()? image,
          String? Function()? description,
          String? $__typename}) =>
      MutationCreateAccount$insertUsersOne(
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
