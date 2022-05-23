// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_eventsBySearch.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryGetEventsBySearch _$VariablesQueryGetEventsBySearchFromJson(
        Map<String, dynamic> json) =>
    VariablesQueryGetEventsBySearch(
      query: json['query'] as String,
    );

Map<String, dynamic> _$VariablesQueryGetEventsBySearchToJson(
        VariablesQueryGetEventsBySearch instance) =>
    <String, dynamic>{
      'query': instance.query,
    };

QueryGetEventsBySearch _$QueryGetEventsBySearchFromJson(
        Map<String, dynamic> json) =>
    QueryGetEventsBySearch(
      events: (json['events'] as List<dynamic>)
          .map((e) =>
              QueryGetEventsBySearch$events.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetEventsBySearchToJson(
        QueryGetEventsBySearch instance) =>
    <String, dynamic>{
      'events': instance.events.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

QueryGetEventsBySearch$events _$QueryGetEventsBySearch$eventsFromJson(
        Map<String, dynamic> json) =>
    QueryGetEventsBySearch$events(
      banner_image: json['banner_image'] as String?,
      description: json['description'] as String?,
      end_date: DateTime.parse(json['end_date'] as String),
      id: json['id'] as String,
      image: json['image'] as String?,
      location: json['location'] as Map<String, dynamic>?,
      name: json['name'] as String,
      start_date: DateTime.parse(json['start_date'] as String),
      event_type: QueryGetEventsBySearch$events$eventType.fromJson(
          json['event_type'] as Map<String, dynamic>),
      attendings_aggregate:
          QueryGetEventsBySearch$events$attendingsAggregate.fromJson(
              json['attendings_aggregate'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetEventsBySearch$eventsToJson(
        QueryGetEventsBySearch$events instance) =>
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

QueryGetEventsBySearch$events$eventType
    _$QueryGetEventsBySearch$events$eventTypeFromJson(
            Map<String, dynamic> json) =>
        QueryGetEventsBySearch$events$eventType(
          name: json['name'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryGetEventsBySearch$events$eventTypeToJson(
        QueryGetEventsBySearch$events$eventType instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

QueryGetEventsBySearch$events$attendingsAggregate
    _$QueryGetEventsBySearch$events$attendingsAggregateFromJson(
            Map<String, dynamic> json) =>
        QueryGetEventsBySearch$events$attendingsAggregate(
          aggregate: json['aggregate'] == null
              ? null
              : QueryGetEventsBySearch$events$attendingsAggregate$aggregate
                  .fromJson(json['aggregate'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryGetEventsBySearch$events$attendingsAggregateToJson(
        QueryGetEventsBySearch$events$attendingsAggregate instance) =>
    <String, dynamic>{
      'aggregate': instance.aggregate?.toJson(),
      '__typename': instance.$__typename,
    };

QueryGetEventsBySearch$events$attendingsAggregate$aggregate
    _$QueryGetEventsBySearch$events$attendingsAggregate$aggregateFromJson(
            Map<String, dynamic> json) =>
        QueryGetEventsBySearch$events$attendingsAggregate$aggregate(
          count: json['count'] as int,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$QueryGetEventsBySearch$events$attendingsAggregate$aggregateToJson(
            QueryGetEventsBySearch$events$attendingsAggregate$aggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          '__typename': instance.$__typename,
        };
