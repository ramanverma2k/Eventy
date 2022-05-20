import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'create_event.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesMutationCreateEvent {
  VariablesMutationCreateEvent(
      {required this.id,
      required this.name,
      required this.start_date,
      required this.end_date,
      required this.created_at,
      required this.location,
      required this.description,
      required this.type_id,
      required this.banner_image,
      required this.image,
      required this.organizer});

  @override
  factory VariablesMutationCreateEvent.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationCreateEventFromJson(json);

  final String id;

  final String name;

  final DateTime start_date;

  final DateTime end_date;

  final DateTime created_at;

  final Map<String, dynamic> location;

  final String description;

  final int type_id;

  final String banner_image;

  final String image;

  final String organizer;

  Map<String, dynamic> toJson() => _$VariablesMutationCreateEventToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$start_date = start_date;
    final l$end_date = end_date;
    final l$created_at = created_at;
    final l$location = location;
    final l$description = description;
    final l$type_id = type_id;
    final l$banner_image = banner_image;
    final l$image = image;
    final l$organizer = organizer;
    return Object.hashAll([
      l$id,
      l$name,
      l$start_date,
      l$end_date,
      l$created_at,
      l$location,
      l$description,
      l$type_id,
      l$banner_image,
      l$image,
      l$organizer
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationCreateEvent) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$start_date = start_date;
    final lOther$start_date = other.start_date;
    if (l$start_date != lOther$start_date) return false;
    final l$end_date = end_date;
    final lOther$end_date = other.end_date;
    if (l$end_date != lOther$end_date) return false;
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) return false;
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    final l$banner_image = banner_image;
    final lOther$banner_image = other.banner_image;
    if (l$banner_image != lOther$banner_image) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$organizer = organizer;
    final lOther$organizer = other.organizer;
    if (l$organizer != lOther$organizer) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class MutationCreateEvent {
  MutationCreateEvent({this.insert_events_one, required this.$__typename});

  @override
  factory MutationCreateEvent.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateEventFromJson(json);

  final MutationCreateEvent$insertEventsOne? insert_events_one;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationCreateEventToJson(this);
  int get hashCode {
    final l$insert_events_one = insert_events_one;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insert_events_one, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateEvent) || runtimeType != other.runtimeType)
      return false;
    final l$insert_events_one = insert_events_one;
    final lOther$insert_events_one = other.insert_events_one;
    if (l$insert_events_one != lOther$insert_events_one) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationCreateEvent on MutationCreateEvent {
  MutationCreateEvent copyWith(
          {MutationCreateEvent$insertEventsOne? Function()? insert_events_one,
          String? $__typename}) =>
      MutationCreateEvent(
          insert_events_one: insert_events_one == null
              ? this.insert_events_one
              : insert_events_one(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const MUTATION_CREATE_EVENT = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateEvent'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'start_date')),
            type: NamedTypeNode(
                name: NameNode(value: 'timestamp'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'end_date')),
            type: NamedTypeNode(
                name: NameNode(value: 'timestamp'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'created_at')),
            type: NamedTypeNode(
                name: NameNode(value: 'timestamp'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'location')),
            type: NamedTypeNode(name: NameNode(value: 'json'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'description')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'type_id')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'banner_image')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'image')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'organizer')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insert_events_one'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'id'),
                        value: VariableNode(name: NameNode(value: 'id'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'name'),
                        value: VariableNode(name: NameNode(value: 'name'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'start_date'),
                        value:
                            VariableNode(name: NameNode(value: 'start_date'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'end_date'),
                        value: VariableNode(name: NameNode(value: 'end_date'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'created_at'),
                        value:
                            VariableNode(name: NameNode(value: 'created_at'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'location'),
                        value: VariableNode(name: NameNode(value: 'location'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'description'),
                        value:
                            VariableNode(name: NameNode(value: 'description'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'type_id'),
                        value: VariableNode(name: NameNode(value: 'type_id'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'banner_image'),
                        value: VariableNode(
                            name: NameNode(value: 'banner_image'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'image'),
                        value: VariableNode(name: NameNode(value: 'image'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'organizer'),
                        value: VariableNode(name: NameNode(value: 'organizer')))
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
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'created_at'),
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
MutationCreateEvent _parserFnMutationCreateEvent(Map<String, dynamic> data) =>
    MutationCreateEvent.fromJson(data);
typedef OnMutationCompletedMutationCreateEvent = FutureOr<void> Function(
    dynamic, MutationCreateEvent?);

class OptionsMutationCreateEvent
    extends graphql.MutationOptions<MutationCreateEvent> {
  OptionsMutationCreateEvent(
      {String? operationName,
      required VariablesMutationCreateEvent variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationCreateEvent? onCompleted,
      graphql.OnMutationUpdate<MutationCreateEvent>? update,
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
                    data == null ? null : _parserFnMutationCreateEvent(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_EVENT,
            parserFn: _parserFnMutationCreateEvent);

  final OnMutationCompletedMutationCreateEvent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationCreateEvent
    extends graphql.WatchQueryOptions<MutationCreateEvent> {
  WatchOptionsMutationCreateEvent(
      {String? operationName,
      required VariablesMutationCreateEvent variables,
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
            document: MUTATION_CREATE_EVENT,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationCreateEvent);
}

extension ClientExtensionMutationCreateEvent on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationCreateEvent>> mutateCreateEvent(
          OptionsMutationCreateEvent options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationCreateEvent> watchMutationCreateEvent(
          WatchOptionsMutationCreateEvent options) =>
      this.watchMutation(options);
}

@JsonSerializable(explicitToJson: true)
class MutationCreateEvent$insertEventsOne {
  MutationCreateEvent$insertEventsOne(
      {required this.id,
      required this.name,
      required this.created_at,
      required this.$__typename});

  @override
  factory MutationCreateEvent$insertEventsOne.fromJson(
          Map<String, dynamic> json) =>
      _$MutationCreateEvent$insertEventsOneFromJson(json);

  final String id;

  final String name;

  final DateTime created_at;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$MutationCreateEvent$insertEventsOneToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$created_at, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateEvent$insertEventsOne) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationCreateEvent$insertEventsOne
    on MutationCreateEvent$insertEventsOne {
  MutationCreateEvent$insertEventsOne copyWith(
          {String? id,
          String? name,
          DateTime? created_at,
          String? $__typename}) =>
      MutationCreateEvent$insertEventsOne(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          created_at: created_at == null ? this.created_at : created_at,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
