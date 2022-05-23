import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'get_subscribedEvents.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesQueryGetSubscribedEvents {
  VariablesQueryGetSubscribedEvents({required this.userId});

  @override
  factory VariablesQueryGetSubscribedEvents.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesQueryGetSubscribedEventsFromJson(json);

  final String userId;

  Map<String, dynamic> toJson() =>
      _$VariablesQueryGetSubscribedEventsToJson(this);
  int get hashCode {
    final l$userId = userId;
    return Object.hashAll([l$userId]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryGetSubscribedEvents) ||
        runtimeType != other.runtimeType) return false;
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetSubscribedEvents {
  QueryGetSubscribedEvents({required this.events, required this.$__typename});

  @override
  factory QueryGetSubscribedEvents.fromJson(Map<String, dynamic> json) =>
      _$QueryGetSubscribedEventsFromJson(json);

  final List<QueryGetSubscribedEvents$events> events;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetSubscribedEventsToJson(this);
  int get hashCode {
    final l$events = events;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$events.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSubscribedEvents) ||
        runtimeType != other.runtimeType) return false;
    final l$events = events;
    final lOther$events = other.events;
    if (l$events.length != lOther$events.length) return false;
    for (int i = 0; i < l$events.length; i++) {
      final l$events$entry = l$events[i];
      final lOther$events$entry = lOther$events[i];
      if (l$events$entry != lOther$events$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryGetSubscribedEvents on QueryGetSubscribedEvents {
  QueryGetSubscribedEvents copyWith(
          {List<QueryGetSubscribedEvents$events>? events,
          String? $__typename}) =>
      QueryGetSubscribedEvents(
          events: events == null ? this.events : events,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERY_GET_SUBSCRIBED_EVENTS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetSubscribedEvents'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'userId')),
            type: NamedTypeNode(name: NameNode(value: 'uuid'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'events'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'where'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'user'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'id'),
                              value: ObjectValueNode(fields: [
                                ObjectFieldNode(
                                    name: NameNode(value: '_eq'),
                                    value: VariableNode(
                                        name: NameNode(value: 'userId')))
                              ]))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'banner_image'),
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
                  name: NameNode(value: 'end_date'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'id'),
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
                  name: NameNode(value: 'location'),
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
                  name: NameNode(value: 'start_date'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'user'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
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
                  name: NameNode(value: 'event_type'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
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
                  name: NameNode(value: 'attendings_aggregate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'aggregate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'count'),
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
QueryGetSubscribedEvents _parserFnQueryGetSubscribedEvents(
        Map<String, dynamic> data) =>
    QueryGetSubscribedEvents.fromJson(data);

class OptionsQueryGetSubscribedEvents
    extends graphql.QueryOptions<QueryGetSubscribedEvents> {
  OptionsQueryGetSubscribedEvents(
      {String? operationName,
      required VariablesQueryGetSubscribedEvents variables,
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
            document: QUERY_GET_SUBSCRIBED_EVENTS,
            parserFn: _parserFnQueryGetSubscribedEvents);
}

class WatchOptionsQueryGetSubscribedEvents
    extends graphql.WatchQueryOptions<QueryGetSubscribedEvents> {
  WatchOptionsQueryGetSubscribedEvents(
      {String? operationName,
      required VariablesQueryGetSubscribedEvents variables,
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
            document: QUERY_GET_SUBSCRIBED_EVENTS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetSubscribedEvents);
}

class FetchMoreOptionsQueryGetSubscribedEvents
    extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetSubscribedEvents(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryGetSubscribedEvents variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_GET_SUBSCRIBED_EVENTS);
}

extension ClientExtensionQueryGetSubscribedEvents on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetSubscribedEvents>>
      queryGetSubscribedEvents(OptionsQueryGetSubscribedEvents options) async =>
          await this.query(options);
  graphql.ObservableQuery<QueryGetSubscribedEvents>
      watchQueryGetSubscribedEvents(
              WatchOptionsQueryGetSubscribedEvents options) =>
          this.watchQuery(options);
  void writeQueryGetSubscribedEvents(
          {required QueryGetSubscribedEvents data,
          required VariablesQueryGetSubscribedEvents variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: QUERY_GET_SUBSCRIBED_EVENTS),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  QueryGetSubscribedEvents? readQueryGetSubscribedEvents(
      {required VariablesQueryGetSubscribedEvents variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_GET_SUBSCRIBED_EVENTS),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : QueryGetSubscribedEvents.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetSubscribedEvents$events {
  QueryGetSubscribedEvents$events(
      {this.banner_image,
      this.description,
      required this.end_date,
      required this.id,
      this.image,
      this.location,
      required this.name,
      required this.start_date,
      required this.user,
      required this.event_type,
      required this.attendings_aggregate,
      required this.$__typename});

  @override
  factory QueryGetSubscribedEvents$events.fromJson(Map<String, dynamic> json) =>
      _$QueryGetSubscribedEvents$eventsFromJson(json);

  final String? banner_image;

  final String? description;

  final DateTime end_date;

  final String id;

  final String? image;

  final Map<String, dynamic>? location;

  final String name;

  final DateTime start_date;

  final QueryGetSubscribedEvents$events$user user;

  final QueryGetSubscribedEvents$events$eventType event_type;

  final QueryGetSubscribedEvents$events$attendingsAggregate
      attendings_aggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetSubscribedEvents$eventsToJson(this);
  int get hashCode {
    final l$banner_image = banner_image;
    final l$description = description;
    final l$end_date = end_date;
    final l$id = id;
    final l$image = image;
    final l$location = location;
    final l$name = name;
    final l$start_date = start_date;
    final l$user = user;
    final l$event_type = event_type;
    final l$attendings_aggregate = attendings_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$banner_image,
      l$description,
      l$end_date,
      l$id,
      l$image,
      l$location,
      l$name,
      l$start_date,
      l$user,
      l$event_type,
      l$attendings_aggregate,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSubscribedEvents$events) ||
        runtimeType != other.runtimeType) return false;
    final l$banner_image = banner_image;
    final lOther$banner_image = other.banner_image;
    if (l$banner_image != lOther$banner_image) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$end_date = end_date;
    final lOther$end_date = other.end_date;
    if (l$end_date != lOther$end_date) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$start_date = start_date;
    final lOther$start_date = other.start_date;
    if (l$start_date != lOther$start_date) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$event_type = event_type;
    final lOther$event_type = other.event_type;
    if (l$event_type != lOther$event_type) return false;
    final l$attendings_aggregate = attendings_aggregate;
    final lOther$attendings_aggregate = other.attendings_aggregate;
    if (l$attendings_aggregate != lOther$attendings_aggregate) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryGetSubscribedEvents$events
    on QueryGetSubscribedEvents$events {
  QueryGetSubscribedEvents$events copyWith(
          {String? Function()? banner_image,
          String? Function()? description,
          DateTime? end_date,
          String? id,
          String? Function()? image,
          Map<String, dynamic>? Function()? location,
          String? name,
          DateTime? start_date,
          QueryGetSubscribedEvents$events$user? user,
          QueryGetSubscribedEvents$events$eventType? event_type,
          QueryGetSubscribedEvents$events$attendingsAggregate?
              attendings_aggregate,
          String? $__typename}) =>
      QueryGetSubscribedEvents$events(
          banner_image:
              banner_image == null ? this.banner_image : banner_image(),
          description: description == null ? this.description : description(),
          end_date: end_date == null ? this.end_date : end_date,
          id: id == null ? this.id : id,
          image: image == null ? this.image : image(),
          location: location == null ? this.location : location(),
          name: name == null ? this.name : name,
          start_date: start_date == null ? this.start_date : start_date,
          user: user == null ? this.user : user,
          event_type: event_type == null ? this.event_type : event_type,
          attendings_aggregate: attendings_aggregate == null
              ? this.attendings_aggregate
              : attendings_aggregate,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetSubscribedEvents$events$user {
  QueryGetSubscribedEvents$events$user(
      {required this.id, required this.$__typename});

  @override
  factory QueryGetSubscribedEvents$events$user.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSubscribedEvents$events$userFromJson(json);

  final String id;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetSubscribedEvents$events$userToJson(this);
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSubscribedEvents$events$user) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryGetSubscribedEvents$events$user
    on QueryGetSubscribedEvents$events$user {
  QueryGetSubscribedEvents$events$user copyWith(
          {String? id, String? $__typename}) =>
      QueryGetSubscribedEvents$events$user(
          id: id == null ? this.id : id,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetSubscribedEvents$events$eventType {
  QueryGetSubscribedEvents$events$eventType(
      {this.name, required this.$__typename});

  @override
  factory QueryGetSubscribedEvents$events$eventType.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSubscribedEvents$events$eventTypeFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetSubscribedEvents$events$eventTypeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSubscribedEvents$events$eventType) ||
        runtimeType != other.runtimeType) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryGetSubscribedEvents$events$eventType
    on QueryGetSubscribedEvents$events$eventType {
  QueryGetSubscribedEvents$events$eventType copyWith(
          {String? Function()? name, String? $__typename}) =>
      QueryGetSubscribedEvents$events$eventType(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetSubscribedEvents$events$attendingsAggregate {
  QueryGetSubscribedEvents$events$attendingsAggregate(
      {this.aggregate, required this.$__typename});

  @override
  factory QueryGetSubscribedEvents$events$attendingsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSubscribedEvents$events$attendingsAggregateFromJson(json);

  final QueryGetSubscribedEvents$events$attendingsAggregate$aggregate?
      aggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetSubscribedEvents$events$attendingsAggregateToJson(this);
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$aggregate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSubscribedEvents$events$attendingsAggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryGetSubscribedEvents$events$attendingsAggregate
    on QueryGetSubscribedEvents$events$attendingsAggregate {
  QueryGetSubscribedEvents$events$attendingsAggregate copyWith(
          {QueryGetSubscribedEvents$events$attendingsAggregate$aggregate?
                  Function()?
              aggregate,
          String? $__typename}) =>
      QueryGetSubscribedEvents$events$attendingsAggregate(
          aggregate: aggregate == null ? this.aggregate : aggregate(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetSubscribedEvents$events$attendingsAggregate$aggregate {
  QueryGetSubscribedEvents$events$attendingsAggregate$aggregate(
      {required this.count, required this.$__typename});

  @override
  factory QueryGetSubscribedEvents$events$attendingsAggregate$aggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSubscribedEvents$events$attendingsAggregate$aggregateFromJson(
          json);

  final int count;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetSubscribedEvents$events$attendingsAggregate$aggregateToJson(
          this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetSubscribedEvents$events$attendingsAggregate$aggregate) ||
        runtimeType != other.runtimeType) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryGetSubscribedEvents$events$attendingsAggregate$aggregate
    on QueryGetSubscribedEvents$events$attendingsAggregate$aggregate {
  QueryGetSubscribedEvents$events$attendingsAggregate$aggregate copyWith(
          {int? count, String? $__typename}) =>
      QueryGetSubscribedEvents$events$attendingsAggregate$aggregate(
          count: count == null ? this.count : count,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
