import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'join_event.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesMutationJoinEvent {
  VariablesMutationJoinEvent({required this.eventId, required this.userId});

  @override
  factory VariablesMutationJoinEvent.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationJoinEventFromJson(json);

  final String eventId;

  final String userId;

  Map<String, dynamic> toJson() => _$VariablesMutationJoinEventToJson(this);
  int get hashCode {
    final l$eventId = eventId;
    final l$userId = userId;
    return Object.hashAll([l$eventId, l$userId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationJoinEvent) ||
        runtimeType != other.runtimeType) return false;
    final l$eventId = eventId;
    final lOther$eventId = other.eventId;
    if (l$eventId != lOther$eventId) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class MutationJoinEvent {
  MutationJoinEvent({this.insert_attending_one, required this.$__typename});

  @override
  factory MutationJoinEvent.fromJson(Map<String, dynamic> json) =>
      _$MutationJoinEventFromJson(json);

  final MutationJoinEvent$insertAttendingOne? insert_attending_one;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationJoinEventToJson(this);
  int get hashCode {
    final l$insert_attending_one = insert_attending_one;
    final l$$__typename = $__typename;
    return Object.hashAll([l$insert_attending_one, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationJoinEvent) || runtimeType != other.runtimeType)
      return false;
    final l$insert_attending_one = insert_attending_one;
    final lOther$insert_attending_one = other.insert_attending_one;
    if (l$insert_attending_one != lOther$insert_attending_one) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationJoinEvent on MutationJoinEvent {
  MutationJoinEvent copyWith(
          {MutationJoinEvent$insertAttendingOne? Function()?
              insert_attending_one,
          String? $__typename}) =>
      MutationJoinEvent(
          insert_attending_one: insert_attending_one == null
              ? this.insert_attending_one
              : insert_attending_one(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const MUTATION_JOIN_EVENT = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'JoinEvent'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'eventId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insert_attending_one'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'event_id'),
                        value: VariableNode(name: NameNode(value: 'eventId'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'user_id'),
                        value: VariableNode(name: NameNode(value: 'userId')))
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
                  name: NameNode(value: 'user_id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'event_id'),
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
MutationJoinEvent _parserFnMutationJoinEvent(Map<String, dynamic> data) =>
    MutationJoinEvent.fromJson(data);
typedef OnMutationCompletedMutationJoinEvent = FutureOr<void> Function(
    dynamic, MutationJoinEvent?);

class OptionsMutationJoinEvent
    extends graphql.MutationOptions<MutationJoinEvent> {
  OptionsMutationJoinEvent(
      {String? operationName,
      required VariablesMutationJoinEvent variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationJoinEvent? onCompleted,
      graphql.OnMutationUpdate<MutationJoinEvent>? update,
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
                    data == null ? null : _parserFnMutationJoinEvent(data)),
            update: update,
            onError: onError,
            document: MUTATION_JOIN_EVENT,
            parserFn: _parserFnMutationJoinEvent);

  final OnMutationCompletedMutationJoinEvent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationJoinEvent
    extends graphql.WatchQueryOptions<MutationJoinEvent> {
  WatchOptionsMutationJoinEvent(
      {String? operationName,
      required VariablesMutationJoinEvent variables,
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
            document: MUTATION_JOIN_EVENT,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationJoinEvent);
}

extension ClientExtensionMutationJoinEvent on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationJoinEvent>> mutateJoinEvent(
          OptionsMutationJoinEvent options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationJoinEvent> watchMutationJoinEvent(
          WatchOptionsMutationJoinEvent options) =>
      this.watchMutation(options);
}

@JsonSerializable(explicitToJson: true)
class MutationJoinEvent$insertAttendingOne {
  MutationJoinEvent$insertAttendingOne(
      {required this.id,
      this.user_id,
      this.event_id,
      required this.$__typename});

  @override
  factory MutationJoinEvent$insertAttendingOne.fromJson(
          Map<String, dynamic> json) =>
      _$MutationJoinEvent$insertAttendingOneFromJson(json);

  final int id;

  final String? user_id;

  final String? event_id;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$MutationJoinEvent$insertAttendingOneToJson(this);
  int get hashCode {
    final l$id = id;
    final l$user_id = user_id;
    final l$event_id = event_id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$user_id, l$event_id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationJoinEvent$insertAttendingOne) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationJoinEvent$insertAttendingOne
    on MutationJoinEvent$insertAttendingOne {
  MutationJoinEvent$insertAttendingOne copyWith(
          {int? id,
          String? Function()? user_id,
          String? Function()? event_id,
          String? $__typename}) =>
      MutationJoinEvent$insertAttendingOne(
          id: id == null ? this.id : id,
          user_id: user_id == null ? this.user_id : user_id(),
          event_id: event_id == null ? this.event_id : event_id(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
