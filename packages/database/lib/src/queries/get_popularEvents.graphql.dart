import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'get_popularEvents.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class QueryGetPopularEvents {
  QueryGetPopularEvents({required this.events, required this.$__typename});

  @override
  factory QueryGetPopularEvents.fromJson(Map<String, dynamic> json) =>
      _$QueryGetPopularEventsFromJson(json);

  final List<QueryGetPopularEvents$events> events;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetPopularEventsToJson(this);
  int get hashCode {
    final l$events = events;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$events.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetPopularEvents) || runtimeType != other.runtimeType)
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

extension UtilityExtensionQueryGetPopularEvents on QueryGetPopularEvents {
  QueryGetPopularEvents copyWith(
          {List<QueryGetPopularEvents$events>? events, String? $__typename}) =>
      QueryGetPopularEvents(
          events: events == null ? this.events : events,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERY_GET_POPULAR_EVENTS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetPopularEvents'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'events'),
            alias: null,
            arguments: [],
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
QueryGetPopularEvents _parserFnQueryGetPopularEvents(
        Map<String, dynamic> data) =>
    QueryGetPopularEvents.fromJson(data);

class OptionsQueryGetPopularEvents
    extends graphql.QueryOptions<QueryGetPopularEvents> {
  OptionsQueryGetPopularEvents(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_POPULAR_EVENTS,
            parserFn: _parserFnQueryGetPopularEvents);
}

class WatchOptionsQueryGetPopularEvents
    extends graphql.WatchQueryOptions<QueryGetPopularEvents> {
  WatchOptionsQueryGetPopularEvents(
      {String? operationName,
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
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_POPULAR_EVENTS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetPopularEvents);
}

class FetchMoreOptionsQueryGetPopularEvents extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetPopularEvents(
      {required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_GET_POPULAR_EVENTS);
}

extension ClientExtensionQueryGetPopularEvents on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetPopularEvents>> queryGetPopularEvents(
          [OptionsQueryGetPopularEvents? options]) async =>
      await this.query(options ?? OptionsQueryGetPopularEvents());
  graphql.ObservableQuery<QueryGetPopularEvents> watchQueryGetPopularEvents(
          [WatchOptionsQueryGetPopularEvents? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryGetPopularEvents());
  void writeQueryGetPopularEvents(
          {required QueryGetPopularEvents data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERY_GET_POPULAR_EVENTS)),
          data: data.toJson(),
          broadcast: broadcast);
  QueryGetPopularEvents? readQueryGetPopularEvents({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_GET_POPULAR_EVENTS)),
        optimistic: optimistic);
    return result == null ? null : QueryGetPopularEvents.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetPopularEvents$events {
  QueryGetPopularEvents$events(
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
  factory QueryGetPopularEvents$events.fromJson(Map<String, dynamic> json) =>
      _$QueryGetPopularEvents$eventsFromJson(json);

  final String? banner_image;

  final String? description;

  final DateTime end_date;

  final String id;

  final String? image;

  final Map<String, dynamic>? location;

  final String name;

  final DateTime start_date;

  final QueryGetPopularEvents$events$user user;

  final QueryGetPopularEvents$events$eventType event_type;

  final QueryGetPopularEvents$events$attendingsAggregate attendings_aggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetPopularEvents$eventsToJson(this);
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
    if (!(other is QueryGetPopularEvents$events) ||
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

extension UtilityExtensionQueryGetPopularEvents$events
    on QueryGetPopularEvents$events {
  QueryGetPopularEvents$events copyWith(
          {String? Function()? banner_image,
          String? Function()? description,
          DateTime? end_date,
          String? id,
          String? Function()? image,
          Map<String, dynamic>? Function()? location,
          String? name,
          DateTime? start_date,
          QueryGetPopularEvents$events$user? user,
          QueryGetPopularEvents$events$eventType? event_type,
          QueryGetPopularEvents$events$attendingsAggregate?
              attendings_aggregate,
          String? $__typename}) =>
      QueryGetPopularEvents$events(
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
class QueryGetPopularEvents$events$user {
  QueryGetPopularEvents$events$user(
      {required this.id,
      required this.first_name,
      this.last_name,
      required this.$__typename});

  @override
  factory QueryGetPopularEvents$events$user.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetPopularEvents$events$userFromJson(json);

  final String id;

  final String first_name;

  final String? last_name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetPopularEvents$events$userToJson(this);
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
    if (!(other is QueryGetPopularEvents$events$user) ||
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

extension UtilityExtensionQueryGetPopularEvents$events$user
    on QueryGetPopularEvents$events$user {
  QueryGetPopularEvents$events$user copyWith(
          {String? id,
          String? first_name,
          String? Function()? last_name,
          String? $__typename}) =>
      QueryGetPopularEvents$events$user(
          id: id == null ? this.id : id,
          first_name: first_name == null ? this.first_name : first_name,
          last_name: last_name == null ? this.last_name : last_name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetPopularEvents$events$eventType {
  QueryGetPopularEvents$events$eventType(
      {this.name, required this.$__typename});

  @override
  factory QueryGetPopularEvents$events$eventType.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetPopularEvents$events$eventTypeFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetPopularEvents$events$eventTypeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetPopularEvents$events$eventType) ||
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

extension UtilityExtensionQueryGetPopularEvents$events$eventType
    on QueryGetPopularEvents$events$eventType {
  QueryGetPopularEvents$events$eventType copyWith(
          {String? Function()? name, String? $__typename}) =>
      QueryGetPopularEvents$events$eventType(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetPopularEvents$events$attendingsAggregate {
  QueryGetPopularEvents$events$attendingsAggregate(
      {this.aggregate, required this.$__typename});

  @override
  factory QueryGetPopularEvents$events$attendingsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetPopularEvents$events$attendingsAggregateFromJson(json);

  final QueryGetPopularEvents$events$attendingsAggregate$aggregate? aggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetPopularEvents$events$attendingsAggregateToJson(this);
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$aggregate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetPopularEvents$events$attendingsAggregate) ||
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

extension UtilityExtensionQueryGetPopularEvents$events$attendingsAggregate
    on QueryGetPopularEvents$events$attendingsAggregate {
  QueryGetPopularEvents$events$attendingsAggregate copyWith(
          {QueryGetPopularEvents$events$attendingsAggregate$aggregate?
                  Function()?
              aggregate,
          String? $__typename}) =>
      QueryGetPopularEvents$events$attendingsAggregate(
          aggregate: aggregate == null ? this.aggregate : aggregate(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetPopularEvents$events$attendingsAggregate$aggregate {
  QueryGetPopularEvents$events$attendingsAggregate$aggregate(
      {required this.count, required this.$__typename});

  @override
  factory QueryGetPopularEvents$events$attendingsAggregate$aggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetPopularEvents$events$attendingsAggregate$aggregateFromJson(
          json);

  final int count;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetPopularEvents$events$attendingsAggregate$aggregateToJson(this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetPopularEvents$events$attendingsAggregate$aggregate) ||
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

extension UtilityExtensionQueryGetPopularEvents$events$attendingsAggregate$aggregate
    on QueryGetPopularEvents$events$attendingsAggregate$aggregate {
  QueryGetPopularEvents$events$attendingsAggregate$aggregate copyWith(
          {int? count, String? $__typename}) =>
      QueryGetPopularEvents$events$attendingsAggregate$aggregate(
          count: count == null ? this.count : count,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
