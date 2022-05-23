import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'get_eventsBySearchWithFilters.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class VariablesQueryGetEventsBySearchWithFilters {
  VariablesQueryGetEventsBySearchWithFilters(
      {required this.query, required this.filters});

  @override
  factory VariablesQueryGetEventsBySearchWithFilters.fromJson(
          Map<String, dynamic> json) =>
      _$VariablesQueryGetEventsBySearchWithFiltersFromJson(json);

  final String query;

  final List<String> filters;

  Map<String, dynamic> toJson() =>
      _$VariablesQueryGetEventsBySearchWithFiltersToJson(this);
  int get hashCode {
    final l$query = query;
    final l$filters = filters;
    return Object.hashAll([l$query, Object.hashAll(l$filters.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesQueryGetEventsBySearchWithFilters) ||
        runtimeType != other.runtimeType) return false;
    final l$query = query;
    final lOther$query = other.query;
    if (l$query != lOther$query) return false;
    final l$filters = filters;
    final lOther$filters = other.filters;
    if (l$filters.length != lOther$filters.length) return false;
    for (int i = 0; i < l$filters.length; i++) {
      final l$filters$entry = l$filters[i];
      final lOther$filters$entry = lOther$filters[i];
      if (l$filters$entry != lOther$filters$entry) return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetEventsBySearchWithFilters {
  QueryGetEventsBySearchWithFilters(
      {required this.events, required this.$__typename});

  @override
  factory QueryGetEventsBySearchWithFilters.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetEventsBySearchWithFiltersFromJson(json);

  final List<QueryGetEventsBySearchWithFilters$events> events;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetEventsBySearchWithFiltersToJson(this);
  int get hashCode {
    final l$events = events;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$events.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetEventsBySearchWithFilters) ||
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

extension UtilityExtensionQueryGetEventsBySearchWithFilters
    on QueryGetEventsBySearchWithFilters {
  QueryGetEventsBySearchWithFilters copyWith(
          {List<QueryGetEventsBySearchWithFilters$events>? events,
          String? $__typename}) =>
      QueryGetEventsBySearchWithFilters(
          events: events == null ? this.events : events,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERY_GET_EVENTS_BY_SEARCH_WITH_FILTERS =
    const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetEventsBySearchWithFilters'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'query')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'filters')),
            type: ListTypeNode(
                type: NamedTypeNode(
                    name: NameNode(value: 'String'), isNonNull: true),
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
                        name: NameNode(value: 'name'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: '_iregex'),
                              value:
                                  VariableNode(name: NameNode(value: 'query')))
                        ])),
                    ObjectFieldNode(
                        name: NameNode(value: '_or'),
                        value: ListValueNode(values: [
                          ObjectValueNode(fields: [
                            ObjectFieldNode(
                                name: NameNode(value: 'event_type'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                      name: NameNode(value: 'name'),
                                      value: ObjectValueNode(fields: [
                                        ObjectFieldNode(
                                            name: NameNode(value: '_in'),
                                            value: VariableNode(
                                                name:
                                                    NameNode(value: 'filters')))
                                      ]))
                                ]))
                          ])
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
QueryGetEventsBySearchWithFilters _parserFnQueryGetEventsBySearchWithFilters(
        Map<String, dynamic> data) =>
    QueryGetEventsBySearchWithFilters.fromJson(data);

class OptionsQueryGetEventsBySearchWithFilters
    extends graphql.QueryOptions<QueryGetEventsBySearchWithFilters> {
  OptionsQueryGetEventsBySearchWithFilters(
      {String? operationName,
      required VariablesQueryGetEventsBySearchWithFilters variables,
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
            document: QUERY_GET_EVENTS_BY_SEARCH_WITH_FILTERS,
            parserFn: _parserFnQueryGetEventsBySearchWithFilters);
}

class WatchOptionsQueryGetEventsBySearchWithFilters
    extends graphql.WatchQueryOptions<QueryGetEventsBySearchWithFilters> {
  WatchOptionsQueryGetEventsBySearchWithFilters(
      {String? operationName,
      required VariablesQueryGetEventsBySearchWithFilters variables,
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
            document: QUERY_GET_EVENTS_BY_SEARCH_WITH_FILTERS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetEventsBySearchWithFilters);
}

class FetchMoreOptionsQueryGetEventsBySearchWithFilters
    extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetEventsBySearchWithFilters(
      {required graphql.UpdateQuery updateQuery,
      required VariablesQueryGetEventsBySearchWithFilters variables})
      : super(
            updateQuery: updateQuery,
            variables: variables.toJson(),
            document: QUERY_GET_EVENTS_BY_SEARCH_WITH_FILTERS);
}

extension ClientExtensionQueryGetEventsBySearchWithFilters
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetEventsBySearchWithFilters>>
      queryGetEventsBySearchWithFilters(
              OptionsQueryGetEventsBySearchWithFilters options) async =>
          await this.query(options);
  graphql.ObservableQuery<QueryGetEventsBySearchWithFilters>
      watchQueryGetEventsBySearchWithFilters(
              WatchOptionsQueryGetEventsBySearchWithFilters options) =>
          this.watchQuery(options);
  void writeQueryGetEventsBySearchWithFilters(
          {required QueryGetEventsBySearchWithFilters data,
          required VariablesQueryGetEventsBySearchWithFilters variables,
          bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(
                  document: QUERY_GET_EVENTS_BY_SEARCH_WITH_FILTERS),
              variables: variables.toJson()),
          data: data.toJson(),
          broadcast: broadcast);
  QueryGetEventsBySearchWithFilters? readQueryGetEventsBySearchWithFilters(
      {required VariablesQueryGetEventsBySearchWithFilters variables,
      bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: QUERY_GET_EVENTS_BY_SEARCH_WITH_FILTERS),
            variables: variables.toJson()),
        optimistic: optimistic);
    return result == null
        ? null
        : QueryGetEventsBySearchWithFilters.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class QueryGetEventsBySearchWithFilters$events {
  QueryGetEventsBySearchWithFilters$events(
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
  factory QueryGetEventsBySearchWithFilters$events.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetEventsBySearchWithFilters$eventsFromJson(json);

  final String? banner_image;

  final String? description;

  final DateTime end_date;

  final String id;

  final String? image;

  final Map<String, dynamic>? location;

  final String name;

  final DateTime start_date;

  final QueryGetEventsBySearchWithFilters$events$eventType event_type;

  final QueryGetEventsBySearchWithFilters$events$attendingsAggregate
      attendings_aggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetEventsBySearchWithFilters$eventsToJson(this);
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
    if (!(other is QueryGetEventsBySearchWithFilters$events) ||
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

extension UtilityExtensionQueryGetEventsBySearchWithFilters$events
    on QueryGetEventsBySearchWithFilters$events {
  QueryGetEventsBySearchWithFilters$events copyWith(
          {String? Function()? banner_image,
          String? Function()? description,
          DateTime? end_date,
          String? id,
          String? Function()? image,
          Map<String, dynamic>? Function()? location,
          String? name,
          DateTime? start_date,
          QueryGetEventsBySearchWithFilters$events$eventType? event_type,
          QueryGetEventsBySearchWithFilters$events$attendingsAggregate?
              attendings_aggregate,
          String? $__typename}) =>
      QueryGetEventsBySearchWithFilters$events(
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
class QueryGetEventsBySearchWithFilters$events$eventType {
  QueryGetEventsBySearchWithFilters$events$eventType(
      {this.name, required this.$__typename});

  @override
  factory QueryGetEventsBySearchWithFilters$events$eventType.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetEventsBySearchWithFilters$events$eventTypeFromJson(json);

  final String? name;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetEventsBySearchWithFilters$events$eventTypeToJson(this);
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([l$name, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetEventsBySearchWithFilters$events$eventType) ||
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

extension UtilityExtensionQueryGetEventsBySearchWithFilters$events$eventType
    on QueryGetEventsBySearchWithFilters$events$eventType {
  QueryGetEventsBySearchWithFilters$events$eventType copyWith(
          {String? Function()? name, String? $__typename}) =>
      QueryGetEventsBySearchWithFilters$events$eventType(
          name: name == null ? this.name : name(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetEventsBySearchWithFilters$events$attendingsAggregate {
  QueryGetEventsBySearchWithFilters$events$attendingsAggregate(
      {this.aggregate, required this.$__typename});

  @override
  factory QueryGetEventsBySearchWithFilters$events$attendingsAggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetEventsBySearchWithFilters$events$attendingsAggregateFromJson(
          json);

  final QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate?
      aggregate;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetEventsBySearchWithFilters$events$attendingsAggregateToJson(
          this);
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([l$aggregate, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other
            is QueryGetEventsBySearchWithFilters$events$attendingsAggregate) ||
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

extension UtilityExtensionQueryGetEventsBySearchWithFilters$events$attendingsAggregate
    on QueryGetEventsBySearchWithFilters$events$attendingsAggregate {
  QueryGetEventsBySearchWithFilters$events$attendingsAggregate copyWith(
          {QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate?
                  Function()?
              aggregate,
          String? $__typename}) =>
      QueryGetEventsBySearchWithFilters$events$attendingsAggregate(
          aggregate: aggregate == null ? this.aggregate : aggregate(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

@JsonSerializable(explicitToJson: true)
class QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate {
  QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate(
      {required this.count, required this.$__typename});

  @override
  factory QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate.fromJson(
          Map<String, dynamic> json) =>
      _$QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregateFromJson(
          json);

  final int count;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() =>
      _$QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregateToJson(
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
            is QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate) ||
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

extension UtilityExtensionQueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate
    on QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate {
  QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate
      copyWith({int? count, String? $__typename}) =>
          QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate(
              count: count == null ? this.count : count,
              $__typename:
                  $__typename == null ? this.$__typename : $__typename);
}
