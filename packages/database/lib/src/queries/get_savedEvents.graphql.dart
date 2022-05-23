import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'get_savedEvents.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesQueryGetSavedEvents {
  VariablesQueryGetSavedEvents({required this.events});

  @override
  factory VariablesQueryGetSavedEvents.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryGetSavedEventsFromJson(json);

  final List<String> events;

  Map<String, dynamic> toJson() => _$VariablesQueryGetSavedEventsToJson(this);
  int get hashCode {
    final l$events = events;
    return Object.hashAll([Object.hashAll(l$events.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryGetSavedEvents) ||
        runtimeType != other.runtimeType) return false;
    final l$events = events;
    final lOther$events = other.events;
    if (l$events.length != lOther$events.length) return false;
    for (int i = 0; i < l$events.length; i++) {
      final l$events$entry = l$events[i];
      final lOther$events$entry = lOther$events[i];
      if (l$events$entry != lOther$events$entry) return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetSavedEvents {
  QueryGetSavedEvents({required this.events, required this.$__typename});

  @override
  factory QueryGetSavedEvents.fromJson(Map<String, dynamic> json) =>
      _$QueryGetSavedEventsFromJson(json);

  final List<QueryGetSavedEvents$events> events;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetSavedEventsToJson(this);
  int get hashCode {
    final l$events = events;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$events.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSavedEvents) || runtimeType != other.runtimeType)
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

extension UtilityExtensionQueryGetSavedEvents on QueryGetSavedEvents {
  QueryGetSavedEvents copyWith(
          {List<QueryGetSavedEvents$events>? events, String? $__typename}) =>
      QueryGetSavedEvents(
          events: events == null ? this.events : events,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERY_GET_SAVED_EVENTS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetSavedEvents'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'events')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'uuid'), isNonNull: true),
                isNonNull: true),
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
                        name: NameNode(value: 'id'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_in'),
                              value:
                                  VariableNode(name: NameNode(value: 'events')))
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
QueryGetSavedEvents _parserFnQueryGetSavedEvents(Map<String, dynamic> data) =>
    QueryGetSavedEvents.fromJson(data);

class OptionsQueryGetSavedEvents
    extends graphql.QueryOptions<QueryGetSavedEvents> {
  OptionsQueryGetSavedEvents(
      {String? operationName,
      required VariablesQueryGetSavedEvents variables,
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
            document: QUERY_GET_SAVED_EVENTS,
            parserFn: _parserFnQueryGetSavedEvents);
}

class WatchOptionsQueryGetSavedEvents
    extends graphql.WatchQueryOptions<QueryGetSavedEvents> {
  WatchOptionsQueryGetSavedEvents(
      {String? operationName,
      required VariablesQueryGetSavedEvents variables,
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
            document: QUERY_GET_SAVED_EVENTS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetSavedEvents);
}

class FetchMoreOptionsQueryGetSavedEvents extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetSavedEvents(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryGetSavedEvents variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_GET_SAVED_EVENTS);
}

extension ClientExtensionQueryGetSavedEvents on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetSavedEvents>> queryGetSavedEvents(
          OptionsQueryGetSavedEvents options) async =>
      await this.query(options);
  graphql.ObservableQuery<QueryGetSavedEvents> watchQueryGetSavedEvents(
          WatchOptionsQueryGetSavedEvents options) =>
      this.watchQuery(options);
  void writeQueryGetSavedEvents(
          {required QueryGetSavedEvents data,
          required VariablesQueryGetSavedEvents variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERY_GET_SAVED_EVENTS),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  QueryGetSavedEvents? readQueryGetSavedEvents(
      {required VariablesQueryGetSavedEvents variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_GET_SAVED_EVENTS),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : QueryGetSavedEvents.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetSavedEvents$events {
  QueryGetSavedEvents$events(
      {this.banner_image,
      this.description,
      required this.end_date,
      required this.id,
      this.image,
      this.location,
      required this.name,
      required this.start_date,
      required this.event_type,
      required this.attendings_aggregate,
      required this.$__typename});

  @override
  factory QueryGetSavedEvents$events.fromJson(Map<String, dynamic> json) =>
      _$QueryGetSavedEvents$eventsFromJson(json);

  final String? banner_image;

  final String? description;

  final DateTime end_date;

  final String id;

  final String? image;

  final Map<String, dynamic>? location;

  final String name;

  final DateTime start_date;

  final QueryGetSavedEvents$events$eventType event_type;

  final QueryGetSavedEvents$events$attendingsAggregate attendings_aggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetSavedEvents$eventsToJson(this);
  int get hashCode {
    final l$banner_image = banner_image;
    final l$description = description;
    final l$end_date = end_date;
    final l$id = id;
    final l$image = image;
    final l$location = location;
    final l$name = name;
    final l$start_date = start_date;
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
      l$event_type,
      l$attendings_aggregate,
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSavedEvents$events) ||
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

extension UtilityExtensionQueryGetSavedEvents$events
    on QueryGetSavedEvents$events {
  QueryGetSavedEvents$events copyWith(
          {String? Function()? banner_image,
          String? Function()? description,
          DateTime? end_date,
          String? id,
          String? Function()? image,
          Map<String, dynamic>? Function()? location,
          String? name,
          DateTime? start_date,
          QueryGetSavedEvents$events$eventType? event_type,
          QueryGetSavedEvents$events$attendingsAggregate? attendings_aggregate,
          String? $__typename}) =>
      QueryGetSavedEvents$events(
          banner_image:
              banner_image == null ? this.banner_image : banner_image(),
          description: description == null ? this.description : description(),
          end_date: end_date == null ? this.end_date : end_date,
          id: id == null ? this.id : id,
          image: image == null ? this.image : image(),
          location: location == null ? this.location : location(),
          name: name == null ? this.name : name,
          start_date: start_date == null ? this.start_date : start_date,
          event_type: event_type == null ? this.event_type : event_type,
          attendings_aggregate: attendings_aggregate == null
              ? this.attendings_aggregate
              : attendings_aggregate,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetSavedEvents$events$eventType {
  QueryGetSavedEvents$events$eventType({this.name, required this.$__typename});

  @override
  factory QueryGetSavedEvents$events$eventType.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSavedEvents$events$eventTypeFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetSavedEvents$events$eventTypeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSavedEvents$events$eventType) ||
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

extension UtilityExtensionQueryGetSavedEvents$events$eventType
    on QueryGetSavedEvents$events$eventType {
  QueryGetSavedEvents$events$eventType copyWith(
          {String? Function()? name, String? $__typename}) =>
      QueryGetSavedEvents$events$eventType(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetSavedEvents$events$attendingsAggregate {
  QueryGetSavedEvents$events$attendingsAggregate(
      {this.aggregate, required this.$__typename});

  @override
  factory QueryGetSavedEvents$events$attendingsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSavedEvents$events$attendingsAggregateFromJson(json);

  final QueryGetSavedEvents$events$attendingsAggregate$aggregate? aggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetSavedEvents$events$attendingsAggregateToJson(this);
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$aggregate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSavedEvents$events$attendingsAggregate) ||
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

extension UtilityExtensionQueryGetSavedEvents$events$attendingsAggregate
    on QueryGetSavedEvents$events$attendingsAggregate {
  QueryGetSavedEvents$events$attendingsAggregate copyWith(
          {QueryGetSavedEvents$events$attendingsAggregate$aggregate? Function()?
              aggregate,
          String? $__typename}) =>
      QueryGetSavedEvents$events$attendingsAggregate(
          aggregate: aggregate == null ? this.aggregate : aggregate(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetSavedEvents$events$attendingsAggregate$aggregate {
  QueryGetSavedEvents$events$attendingsAggregate$aggregate(
      {required this.count, required this.$__typename});

  @override
  factory QueryGetSavedEvents$events$attendingsAggregate$aggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetSavedEvents$events$attendingsAggregate$aggregateFromJson(json);

  final int count;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetSavedEvents$events$attendingsAggregate$aggregateToJson(this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetSavedEvents$events$attendingsAggregate$aggregate) ||
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

extension UtilityExtensionQueryGetSavedEvents$events$attendingsAggregate$aggregate
    on QueryGetSavedEvents$events$attendingsAggregate$aggregate {
  QueryGetSavedEvents$events$attendingsAggregate$aggregate copyWith(
          {int? count, String? $__typename}) =>
      QueryGetSavedEvents$events$attendingsAggregate$aggregate(
          count: count == null ? this.count : count,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
