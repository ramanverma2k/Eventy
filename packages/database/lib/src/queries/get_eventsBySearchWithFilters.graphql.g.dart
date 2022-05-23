// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_eventsBySearchWithFilters.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryGetEventsBySearchWithFilters
    _$VariablesQueryGetEventsBySearchWithFiltersFromJson(
            Map<String, dynamic> json) =>
        VariablesQueryGetEventsBySearchWithFilters(
          query: json['query'] as String,
          filters: (json['filters'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$VariablesQueryGetEventsBySearchWithFiltersToJson(
        VariablesQueryGetEventsBySearchWithFilters instance) =>
    <String, dynamic>{
      'query': instance.query,
      'filters': instance.filters,
    };

QueryGetEventsBySearchWithFilters _$QueryGetEventsBySearchWithFiltersFromJson(
        Map<String, dynamic> json) =>
    QueryGetEventsBySearchWithFilters(
      events: (json['events'] as List<dynamic>)
          .map((e) => QueryGetEventsBySearchWithFilters$events.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetEventsBySearchWithFiltersToJson(
        QueryGetEventsBySearchWithFilters instance) =>
    <String, dynamic>{
      'events': instance.events.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

QueryGetEventsBySearchWithFilters$events
    _$QueryGetEventsBySearchWithFilters$eventsFromJson(
            Map<String, dynamic> json) =>
        QueryGetEventsBySearchWithFilters$events(
          banner_image: json['banner_image'] as String?,
          description: json['description'] as String?,
          end_date: DateTime.parse(json['end_date'] as String),
          id: json['id'] as String,
          image: json['image'] as String?,
          location: json['location'] as Map<String, dynamic>?,
          name: json['name'] as String,
          start_date: DateTime.parse(json['start_date'] as String),
          event_type:
              QueryGetEventsBySearchWithFilters$events$eventType.fromJson(
                  json['event_type'] as Map<String, dynamic>),
          attendings_aggregate:
              QueryGetEventsBySearchWithFilters$events$attendingsAggregate
                  .fromJson(
                      json['attendings_aggregate'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryGetEventsBySearchWithFilters$eventsToJson(
        QueryGetEventsBySearchWithFilters$events instance) =>
    <String, dynamic>{
      'banner_image': instance.banner_image,
      'description': instance.description,
      'end_date': instance.end_date.toIso8601String(),
      'id': instance.id,
      'image': instance.image,
      'location': instance.location,
      'name': instance.name,
      'start_date': instance.start_date.toIso8601String(),
      'event_type': instance.event_type.toJson(),
      'attendings_aggregate': instance.attendings_aggregate.toJson(),
      '__typename': instance.$__typename,
    };

QueryGetEventsBySearchWithFilters$events$eventType
    _$QueryGetEventsBySearchWithFilters$events$eventTypeFromJson(
            Map<String, dynamic> json) =>
        QueryGetEventsBySearchWithFilters$events$eventType(
          name: json['name'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryGetEventsBySearchWithFilters$events$eventTypeToJson(
        QueryGetEventsBySearchWithFilters$events$eventType instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

QueryGetEventsBySearchWithFilters$events$attendingsAggregate
    _$QueryGetEventsBySearchWithFilters$events$attendingsAggregateFromJson(
            Map<String, dynamic> json) =>
        QueryGetEventsBySearchWithFilters$events$attendingsAggregate(
          aggregate: json['aggregate'] == null
              ? null
              : QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate
                  .fromJson(json['aggregate'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$QueryGetEventsBySearchWithFilters$events$attendingsAggregateToJson(
            QueryGetEventsBySearchWithFilters$events$attendingsAggregate
                instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          '__typename': instance.$__typename,
        };

QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate
    _$QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregateFromJson(
            Map<String, dynamic> json) =>
        QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate(
          count: json['count'] as int,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregateToJson(
            QueryGetEventsBySearchWithFilters$events$attendingsAggregate$aggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          '__typename': instance.$__typename,
        };
