// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_savedEvents.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryGetSavedEvents _$VariablesQueryGetSavedEventsFromJson(
        Map<String, dynamic> json) =>
    VariablesQueryGetSavedEvents(
      events:
          (json['events'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$VariablesQueryGetSavedEventsToJson(
        VariablesQueryGetSavedEvents instance) =>
    <String, dynamic>{
      'events': instance.events,
    };

QueryGetSavedEvents _$QueryGetSavedEventsFromJson(Map<String, dynamic> json) =>
    QueryGetSavedEvents(
      events: (json['events'] as List<dynamic>)
          .map((e) =>
              QueryGetSavedEvents$events.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetSavedEventsToJson(
        QueryGetSavedEvents instance) =>
    <String, dynamic>{
      'events': instance.events.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

QueryGetSavedEvents$events _$QueryGetSavedEvents$eventsFromJson(
        Map<String, dynamic> json) =>
    QueryGetSavedEvents$events(
      banner_image: json['banner_image'] as String?,
      description: json['description'] as String?,
      end_date: DateTime.parse(json['end_date'] as String),
      id: json['id'] as String,
      image: json['image'] as String?,
      location: json['location'] as Map<String, dynamic>?,
      name: json['name'] as String,
      start_date: DateTime.parse(json['start_date'] as String),
      event_type: QueryGetSavedEvents$events$eventType.fromJson(
          json['event_type'] as Map<String, dynamic>),
      attendings_aggregate:
          QueryGetSavedEvents$events$attendingsAggregate.fromJson(
              json['attendings_aggregate'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetSavedEvents$eventsToJson(
        QueryGetSavedEvents$events instance) =>
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

QueryGetSavedEvents$events$eventType
    _$QueryGetSavedEvents$events$eventTypeFromJson(Map<String, dynamic> json) =>
        QueryGetSavedEvents$events$eventType(
          name: json['name'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryGetSavedEvents$events$eventTypeToJson(
        QueryGetSavedEvents$events$eventType instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

QueryGetSavedEvents$events$attendingsAggregate
    _$QueryGetSavedEvents$events$attendingsAggregateFromJson(
            Map<String, dynamic> json) =>
        QueryGetSavedEvents$events$attendingsAggregate(
          aggregate: json['aggregate'] == null
              ? null
              : QueryGetSavedEvents$events$attendingsAggregate$aggregate
                  .fromJson(json['aggregate'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryGetSavedEvents$events$attendingsAggregateToJson(
        QueryGetSavedEvents$events$attendingsAggregate instance) =>
    <String, dynamic>{
      'aggregate': instance.aggregate?.toJson(),
      '__typename': instance.$__typename,
    };

QueryGetSavedEvents$events$attendingsAggregate$aggregate
    _$QueryGetSavedEvents$events$attendingsAggregate$aggregateFromJson(
            Map<String, dynamic> json) =>
        QueryGetSavedEvents$events$attendingsAggregate$aggregate(
          count: json['count'] as int,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$QueryGetSavedEvents$events$attendingsAggregate$aggregateToJson(
        QueryGetSavedEvents$events$attendingsAggregate$aggregate instance) =>
    <String, dynamic>{
      'count': instance.count,
      '__typename': instance.$__typename,
    };
