import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'get_eventsBySearch.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesQueryGetEventsBySearch {
  VariablesQueryGetEventsBySearch({required this.query});

  @override
  factory VariablesQueryGetEventsBySearch.fromJson(Map<String, dynamic> json) =>
      _$VariablesQueryGetEventsBySearchFromJson(json);

  final String query;

  Map<String, dynamic> toJson() =>
      _$VariablesQueryGetEventsBySearchToJson(this);
  int get hashCode {
    final l$query = query;
    return Object.hashAll([l$query]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryGetEventsBySearch) ||
        runtimeType != other.runtimeType) return false;
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetEventsBySearch {
  QueryGetEventsBySearch({required this.events, required this.$__typename});

  @override
  factory QueryGetEventsBySearch.fromJson(Map<String, dynamic> json) =>
      _$QueryGetEventsBySearchFromJson(json);

  final List<QueryGetEventsBySearch$events> events;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetEventsBySearchToJson(this);
  int get hashCode {
    final l$events = events;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$events.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetEventsBySearch) || runtimeType != other.runtimeType)
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

extension UtilityExtensionQueryGetEventsBySearch on QueryGetEventsBySearch {
  QueryGetEventsBySearch copyWith(
          {List<QueryGetEventsBySearch$events>? events, String? $__typename}) =>
      QueryGetEventsBySearch(
          events: events == null ? this.events : events,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERY_GET_EVENTS_BY_SEARCH = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetEventsBySearch'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'query')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
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
                        name: NameNode(value: 'name'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_iregex'),
                              value:
                                  VariableNode(name: NameNode(value: 'query')))
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
QueryGetEventsBySearch _parserFnQueryGetEventsBySearch(
        Map<String, dynamic> data) =>
    QueryGetEventsBySearch.fromJson(data);

class OptionsQueryGetEventsBySearch
    extends graphql.QueryOptions<QueryGetEventsBySearch> {
  OptionsQueryGetEventsBySearch(
      {String? operationName,
      required VariablesQueryGetEventsBySearch variables,
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
            document: QUERY_GET_EVENTS_BY_SEARCH,
            parserFn: _parserFnQueryGetEventsBySearch);
}

class WatchOptionsQueryGetEventsBySearch
    extends graphql.WatchQueryOptions<QueryGetEventsBySearch> {
  WatchOptionsQueryGetEventsBySearch(
      {String? operationName,
      required VariablesQueryGetEventsBySearch variables,
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
            document: QUERY_GET_EVENTS_BY_SEARCH,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetEventsBySearch);
}

class FetchMoreOptionsQueryGetEventsBySearch extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetEventsBySearch(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryGetEventsBySearch variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_GET_EVENTS_BY_SEARCH);
}

extension ClientExtensionQueryGetEventsBySearch on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetEventsBySearch>> queryGetEventsBySearch(
          OptionsQueryGetEventsBySearch options) async =>
      await this.query(options);
  graphql.ObservableQuery<QueryGetEventsBySearch> watchQueryGetEventsBySearch(
          WatchOptionsQueryGetEventsBySearch options) =>
      this.watchQuery(options);
  void writeQueryGetEventsBySearch(
          {required QueryGetEventsBySearch data,
          required VariablesQueryGetEventsBySearch variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation:
                  graphql.Operation(document: QUERY_GET_EVENTS_BY_SEARCH),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  QueryGetEventsBySearch? readQueryGetEventsBySearch(
      {required VariablesQueryGetEventsBySearch variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_GET_EVENTS_BY_SEARCH),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null ? null : QueryGetEventsBySearch.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetEventsBySearch$events {
  QueryGetEventsBySearch$events(
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
  factory QueryGetEventsBySearch$events.fromJson(Map<String, dynamic> json) =>
      _$QueryGetEventsBySearch$eventsFromJson(json);

  final String? banner_image;

  final String? description;

  final DateTime end_date;

  final String id;

  final String? image;

  final Map<String, dynamic>? location;

  final String name;

  final DateTime start_date;

  final QueryGetEventsBySearch$events$eventType event_type;

  final QueryGetEventsBySearch$events$attendingsAggregate attendings_aggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetEventsBySearch$eventsToJson(this);
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
    if (!(other is QueryGetEventsBySearch$events) ||
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

extension UtilityExtensionQueryGetEventsBySearch$events
    on QueryGetEventsBySearch$events {
  QueryGetEventsBySearch$events copyWith(
          {String? Function()? banner_image,
          String? Function()? description,
          DateTime? end_date,
          String? id,
          String? Function()? image,
          Map<String, dynamic>? Function()? location,
          String? name,
          DateTime? start_date,
          QueryGetEventsBySearch$events$eventType? event_type,
          QueryGetEventsBySearch$events$attendingsAggregate?
              attendings_aggregate,
          String? $__typename}) =>
      QueryGetEventsBySearch$events(
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
class QueryGetEventsBySearch$events$eventType {
  QueryGetEventsBySearch$events$eventType(
      {this.name, required this.$__typename});

  @override
  factory QueryGetEventsBySearch$events$eventType.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetEventsBySearch$events$eventTypeFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetEventsBySearch$events$eventTypeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetEventsBySearch$events$eventType) ||
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

extension UtilityExtensionQueryGetEventsBySearch$events$eventType
    on QueryGetEventsBySearch$events$eventType {
  QueryGetEventsBySearch$events$eventType copyWith(
          {String? Function()? name, String? $__typename}) =>
      QueryGetEventsBySearch$events$eventType(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetEventsBySearch$events$attendingsAggregate {
  QueryGetEventsBySearch$events$attendingsAggregate(
      {this.aggregate, required this.$__typename});

  @override
  factory QueryGetEventsBySearch$events$attendingsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetEventsBySearch$events$attendingsAggregateFromJson(json);

  final QueryGetEventsBySearch$events$attendingsAggregate$aggregate? aggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetEventsBySearch$events$attendingsAggregateToJson(this);
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$aggregate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetEventsBySearch$events$attendingsAggregate) ||
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

extension UtilityExtensionQueryGetEventsBySearch$events$attendingsAggregate
    on QueryGetEventsBySearch$events$attendingsAggregate {
  QueryGetEventsBySearch$events$attendingsAggregate copyWith(
          {QueryGetEventsBySearch$events$attendingsAggregate$aggregate?
                  Function()?
              aggregate,
          String? $__typename}) =>
      QueryGetEventsBySearch$events$attendingsAggregate(
          aggregate: aggregate == null ? this.aggregate : aggregate(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetEventsBySearch$events$attendingsAggregate$aggregate {
  QueryGetEventsBySearch$events$attendingsAggregate$aggregate(
      {required this.count, required this.$__typename});

  @override
  factory QueryGetEventsBySearch$events$attendingsAggregate$aggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetEventsBySearch$events$attendingsAggregate$aggregateFromJson(
          json);

  final int count;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetEventsBySearch$events$attendingsAggregate$aggregateToJson(this);
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([l$count, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetEventsBySearch$events$attendingsAggregate$aggregate) ||
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

extension UtilityExtensionQueryGetEventsBySearch$events$attendingsAggregate$aggregate
    on QueryGetEventsBySearch$events$attendingsAggregate$aggregate {
  QueryGetEventsBySearch$events$attendingsAggregate$aggregate copyWith(
          {int? count, String? $__typename}) =>
      QueryGetEventsBySearch$events$attendingsAggregate$aggregate(
          count: count == null ? this.count : count,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
