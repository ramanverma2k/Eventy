import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'get_upcomingEvents.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesQueryGetUpcomingEvents {
  VariablesQueryGetUpcomingEvents({required this.curr_date});

  @override
  factory VariablesQueryGetUpcomingEvents.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryGetUpcomingEventsFromJson(json);

  final DateTime curr_date;

  Map<String, dynamic> toJson() =>
      _$VariablesQueryGetUpcomingEventsToJson(this);
  int get hashCode {
    final l$curr_date = curr_date;
    return Object.hashAll([l$curr_date]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryGetUpcomingEvents) ||
        runtimeType != other.runtimeType) return false;
    final l$curr_date = curr_date;
    final lOther$curr_date = other.curr_date;
    if (l$curr_date != lOther$curr_date) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetUpcomingEvents {
  QueryGetUpcomingEvents({required this.events, required this.$__typename});

  @override
  factory QueryGetUpcomingEvents.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUpcomingEventsFromJson(json);

  final List<QueryGetUpcomingEvents$events> events;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetUpcomingEventsToJson(this);
  int get hashCode {
    final l$events = events;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$events.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetUpcomingEvents) || runtimeType != other.runtimeType)
      return false;
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

extension UtilityExtensionQueryGetUpcomingEvents on QueryGetUpcomingEvents {
  QueryGetUpcomingEvents copyWith(
          {List<QueryGetUpcomingEvents$events>? events, String? $__typename}) =>
      QueryGetUpcomingEvents(
          events: events == null ? this.events : events,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERY_GET_UPCOMING_EVENTS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUpcomingEvents'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'curr_date')),
            type: NamedTypeNode(
                name: NameNode(value: 'timestamp'), isNonNull: true),
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
                        name: NameNode(value: 'start_date'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_gt'),
                              value: VariableNode(
                                  name: NameNode(value: 'curr_date')))
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
QueryGetUpcomingEvents _parserFnQueryGetUpcomingEvents(
        Map<String, dynamic> data) =>
    QueryGetUpcomingEvents.fromJson(data);

class OptionsQueryGetUpcomingEvents
    extends graphql.QueryOptions<QueryGetUpcomingEvents> {
  OptionsQueryGetUpcomingEvents(
      {String? operationName,
      required VariablesQueryGetUpcomingEvents variables,
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
            document: QUERY_GET_UPCOMING_EVENTS,
            parserFn: _parserFnQueryGetUpcomingEvents);
}

class WatchOptionsQueryGetUpcomingEvents
    extends graphql.WatchQueryOptions<QueryGetUpcomingEvents> {
  WatchOptionsQueryGetUpcomingEvents(
      {String? operationName,
      required VariablesQueryGetUpcomingEvents variables,
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
            document: QUERY_GET_UPCOMING_EVENTS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetUpcomingEvents);
}

class FetchMoreOptionsQueryGetUpcomingEvents extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetUpcomingEvents(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryGetUpcomingEvents variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_GET_UPCOMING_EVENTS);
}

extension ClientExtensionQueryGetUpcomingEvents on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetUpcomingEvents>> queryGetUpcomingEvents(
          OptionsQueryGetUpcomingEvents options) async =>
      await this.query(options);
  graphql.ObservableQuery<QueryGetUpcomingEvents> watchQueryGetUpcomingEvents(
          WatchOptionsQueryGetUpcomingEvents options) =>
      this.watchQuery(options);
  void writeQueryGetUpcomingEvents(
          {required QueryGetUpcomingEvents data,
          required VariablesQueryGetUpcomingEvents variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERY_GET_UPCOMING_EVENTS),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  QueryGetUpcomingEvents? readQueryGetUpcomingEvents(
      {required VariablesQueryGetUpcomingEvents variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_GET_UPCOMING_EVENTS),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : QueryGetUpcomingEvents.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetUpcomingEvents$events {
  QueryGetUpcomingEvents$events(
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
  factory QueryGetUpcomingEvents$events.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUpcomingEvents$eventsFromJson(json);

  final String? banner_image;

  final String? description;

  final DateTime end_date;

  final String id;

  final String? image;

  final Map<String, dynamic>? location;

  final String name;

  final DateTime start_date;

  final QueryGetUpcomingEvents$events$user user;

  final QueryGetUpcomingEvents$events$eventType event_type;

  final QueryGetUpcomingEvents$events$attendingsAggregate attendings_aggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetUpcomingEvents$eventsToJson(this);
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
    if (!(other is QueryGetUpcomingEvents$events) ||
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

extension UtilityExtensionQueryGetUpcomingEvents$events
    on QueryGetUpcomingEvents$events {
  QueryGetUpcomingEvents$events copyWith(
          {String? Function()? banner_image,
          String? Function()? description,
          DateTime? end_date,
          String? id,
          String? Function()? image,
          Map<String, dynamic>? Function()? location,
          String? name,
          DateTime? start_date,
          QueryGetUpcomingEvents$events$user? user,
          QueryGetUpcomingEvents$events$eventType? event_type,
          QueryGetUpcomingEvents$events$attendingsAggregate?
              attendings_aggregate,
          String? $__typename}) =>
      QueryGetUpcomingEvents$events(
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
class QueryGetUpcomingEvents$events$user {
  QueryGetUpcomingEvents$events$user(
      {required this.id,
      required this.first_name,
      this.last_name,
      required this.$__typename});

  @override
  factory QueryGetUpcomingEvents$events$user.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetUpcomingEvents$events$userFromJson(json);

  final String id;

  final String first_name;

  final String? last_name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetUpcomingEvents$events$userToJson(this);
  int get hashCode {
    final l$id = id;
    final l$first_name = first_name;
    final l$last_name = last_name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$first_name, l$last_name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetUpcomingEvents$events$user) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$first_name = first_name;
    final lOther$first_name = other.first_name;
    if (l$first_name != lOther$first_name) return false;
    final l$last_name = last_name;
    final lOther$last_name = other.last_name;
    if (l$last_name != lOther$last_name) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryGetUpcomingEvents$events$user
    on QueryGetUpcomingEvents$events$user {
  QueryGetUpcomingEvents$events$user copyWith(
          {String? id,
          String? first_name,
          String? Function()? last_name,
          String? $__typename}) =>
      QueryGetUpcomingEvents$events$user(
          id: id == null ? this.id : id,
          first_name: first_name == null ? this.first_name : first_name,
          last_name: last_name == null ? this.last_name : last_name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetUpcomingEvents$events$eventType {
  QueryGetUpcomingEvents$events$eventType(
      {this.name, required this.$__typename});

  @override
  factory QueryGetUpcomingEvents$events$eventType.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetUpcomingEvents$events$eventTypeFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetUpcomingEvents$events$eventTypeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetUpcomingEvents$events$eventType) ||
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

extension UtilityExtensionQueryGetUpcomingEvents$events$eventType
    on QueryGetUpcomingEvents$events$eventType {
  QueryGetUpcomingEvents$events$eventType copyWith(
          {String? Function()? name, String? $__typename}) =>
      QueryGetUpcomingEvents$events$eventType(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetUpcomingEvents$events$attendingsAggregate {
  QueryGetUpcomingEvents$events$attendingsAggregate(
      {this.aggregate, required this.$__typename});

  @override
  factory QueryGetUpcomingEvents$events$attendingsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetUpcomingEvents$events$attendingsAggregateFromJson(json);

  final QueryGetUpcomingEvents$events$attendingsAggregate$aggregate? aggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetUpcomingEvents$events$attendingsAggregateToJson(this);
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$aggregate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetUpcomingEvents$events$attendingsAggregate) ||
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

extension UtilityExtensionQueryGetUpcomingEvents$events$attendingsAggregate
    on QueryGetUpcomingEvents$events$attendingsAggregate {
  QueryGetUpcomingEvents$events$attendingsAggregate copyWith(
          {QueryGetUpcomingEvents$events$attendingsAggregate$aggregate?
                  Function()?
              aggregate,
          String? $__typename}) =>
      QueryGetUpcomingEvents$events$attendingsAggregate(
          aggregate: aggregate == null ? this.aggregate : aggregate(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetUpcomingEvents$events$attendingsAggregate$aggregate {
  QueryGetUpcomingEvents$events$attendingsAggregate$aggregate(
      {required this.count, required this.$__typename});

  @override
  factory QueryGetUpcomingEvents$events$attendingsAggregate$aggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetUpcomingEvents$events$attendingsAggregate$aggregateFromJson(
          json);

  final int count;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetUpcomingEvents$events$attendingsAggregate$aggregateToJson(this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetUpcomingEvents$events$attendingsAggregate$aggregate) ||
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

extension UtilityExtensionQueryGetUpcomingEvents$events$attendingsAggregate$aggregate
    on QueryGetUpcomingEvents$events$attendingsAggregate$aggregate {
  QueryGetUpcomingEvents$events$attendingsAggregate$aggregate copyWith(
          {int? count, String? $__typename}) =>
      QueryGetUpcomingEvents$events$attendingsAggregate$aggregate(
          count: count == null ? this.count : count,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
