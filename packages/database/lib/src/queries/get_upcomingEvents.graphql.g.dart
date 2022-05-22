// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_upcomingEvents.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryGetUpcomingEvents _$VariablesQueryGetUpcomingEventsFromJson(
        Map<String, dynamic> json) =>
    VariablesQueryGetUpcomingEvents(
      curr_date: DateTime.parse(json['curr_date'] as String),
    );

Map<String, dynamic> _$VariablesQueryGetUpcomingEventsToJson(
        VariablesQueryGetUpcomingEvents instance) =>
    <String, dynamic>{
      'curr_date': instance.curr_date.toIso8601String(),
    };

QueryGetUpcomingEvents _$QueryGetUpcomingEventsFromJson(
        Map<String, dynamic> json) =>
    QueryGetUpcomingEvents(
      events: (json['events'] as List<dynamic>)
          .map((e) =>
              QueryGetUpcomingEvents$events.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetUpcomingEventsToJson(
        QueryGetUpcomingEvents instance) =>
    <String, dynamic>{
      'events': instance.events.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

QueryGetUpcomingEvents$events _$QueryGetUpcomingEvents$eventsFromJson(
        Map<String, dynamic> json) =>
    QueryGetUpcomingEvents$events(
      banner_image: json['banner_image'] as String?,
      description: json['description'] as String?,
      end_date: DateTime.parse(json['end_date'] as String),
      id: json['id'] as String,
      image: json['image'] as String?,
      location: json['location'] as Map<String, dynamic>?,
      name: json['name'] as String,
      start_date: DateTime.parse(json['start_date'] as String),
      user: QueryGetUpcomingEvents$events$user.fromJson(
          json['user'] as Map<String, dynamic>),
      event_type: QueryGetUpcomingEvents$events$eventType.fromJson(
          json['event_type'] as Map<String, dynamic>),
      attendings_aggregate:
          QueryGetUpcomingEvents$events$attendingsAggregate.fromJson(
              json['attendings_aggregate'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetUpcomingEvents$eventsToJson(
        QueryGetUpcomingEvents$events instance) =>
    <String, dynamic>{
      'banner_image': instance.banner_image,
      'description': instance.description,
      'end_date': instance.end_date.toIso8601String(),
      'id': instance.id,
      'image': instance.image,
      'location': instance.location,
      'name': instance.name,
      'start_date': instance.start_date.toIso8601String(),
      'user': instance.user.toJson(),
      'event_type': instance.event_type.toJson(),
      'attendings_aggregate': instance.attendings_aggregate.toJson(),
      '__typename': instance.$__typename,
    };

QueryGetUpcomingEvents$events$user _$QueryGetUpcomingEvents$events$userFromJson(
        Map<String, dynamic> json) =>
    QueryGetUpcomingEvents$events$user(
      id: json['id'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetUpcomingEvents$events$userToJson(
        QueryGetUpcomingEvents$events$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      '__typename': instance.$__typename,
    };

QueryGetUpcomingEvents$events$eventType
    _$QueryGetUpcomingEvents$events$eventTypeFromJson(
            Map<String, dynamic> json) =>
        QueryGetUpcomingEvents$events$eventType(
          name: json['name'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryGetUpcomingEvents$events$eventTypeToJson(
        QueryGetUpcomingEvents$events$eventType instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

QueryGetUpcomingEvents$events$attendingsAggregate
    _$QueryGetUpcomingEvents$events$attendingsAggregateFromJson(
            Map<String, dynamic> json) =>
        QueryGetUpcomingEvents$events$attendingsAggregate(
          aggregate: json['aggregate'] == null
              ? null
              : QueryGetUpcomingEvents$events$attendingsAggregate$aggregate
                  .fromJson(json['aggregate'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryGetUpcomingEvents$events$attendingsAggregateToJson(
        QueryGetUpcomingEvents$events$attendingsAggregate instance) =>
    <String, dynamic>{
      'aggregate': instance.aggregate?.toJson(),
      '__typename': instance.$__typename,
    };

QueryGetUpcomingEvents$events$attendingsAggregate$aggregate
    _$QueryGetUpcomingEvents$events$attendingsAggregate$aggregateFromJson(
            Map<String, dynamic> json) =>
        QueryGetUpcomingEvents$events$attendingsAggregate$aggregate(
          count: json['count'] as int,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$QueryGetUpcomingEvents$events$attendingsAggregate$aggregateToJson(
            QueryGetUpcomingEvents$events$attendingsAggregate$aggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          '__typename': instance.$__typename,
        };
