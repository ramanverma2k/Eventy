// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_popularEvents.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryGetPopularEvents _$QueryGetPopularEventsFromJson(
        Map<String, dynamic> json) =>
    QueryGetPopularEvents(
      events: (json['events'] as List<dynamic>)
          .map((e) =>
              QueryGetPopularEvents$events.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetPopularEventsToJson(
        QueryGetPopularEvents instance) =>
    <String, dynamic>{
      'events': instance.events.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

QueryGetPopularEvents$events _$QueryGetPopularEvents$eventsFromJson(
        Map<String, dynamic> json) =>
    QueryGetPopularEvents$events(
      banner_image: json['banner_image'] as String?,
      description: json['description'] as String?,
      end_date: DateTime.parse(json['end_date'] as String),
      id: json['id'] as String,
      image: json['image'] as String?,
      location: json['location'] as Map<String, dynamic>?,
      name: json['name'] as String,
      start_date: DateTime.parse(json['start_date'] as String),
      user: QueryGetPopularEvents$events$user.fromJson(
          json['user'] as Map<String, dynamic>),
      event_type: QueryGetPopularEvents$events$eventType.fromJson(
          json['event_type'] as Map<String, dynamic>),
      attendings_aggregate:
          QueryGetPopularEvents$events$attendingsAggregate.fromJson(
              json['attendings_aggregate'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetPopularEvents$eventsToJson(
        QueryGetPopularEvents$events instance) =>
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

QueryGetPopularEvents$events$user _$QueryGetPopularEvents$events$userFromJson(
        Map<String, dynamic> json) =>
    QueryGetPopularEvents$events$user(
      id: json['id'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetPopularEvents$events$userToJson(
        QueryGetPopularEvents$events$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      '__typename': instance.$__typename,
    };

QueryGetPopularEvents$events$eventType
    _$QueryGetPopularEvents$events$eventTypeFromJson(
            Map<String, dynamic> json) =>
        QueryGetPopularEvents$events$eventType(
          name: json['name'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryGetPopularEvents$events$eventTypeToJson(
        QueryGetPopularEvents$events$eventType instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

QueryGetPopularEvents$events$attendingsAggregate
    _$QueryGetPopularEvents$events$attendingsAggregateFromJson(
            Map<String, dynamic> json) =>
        QueryGetPopularEvents$events$attendingsAggregate(
          aggregate: json['aggregate'] == null
              ? null
              : QueryGetPopularEvents$events$attendingsAggregate$aggregate
                  .fromJson(json['aggregate'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryGetPopularEvents$events$attendingsAggregateToJson(
        QueryGetPopularEvents$events$attendingsAggregate instance) =>
    <String, dynamic>{
      'aggregate': instance.aggregate?.toJson(),
      '__typename': instance.$__typename,
    };

QueryGetPopularEvents$events$attendingsAggregate$aggregate
    _$QueryGetPopularEvents$events$attendingsAggregate$aggregateFromJson(
            Map<String, dynamic> json) =>
        QueryGetPopularEvents$events$attendingsAggregate$aggregate(
          count: json['count'] as int,
          $__typename: json['__typename'] as String,
        );

Map<String,
    dynamic> _$QueryGetPopularEvents$events$attendingsAggregate$aggregateToJson(
        QueryGetPopularEvents$events$attendingsAggregate$aggregate instance) =>
    <String, dynamic>{
      'count': instance.count,
      '__typename': instance.$__typename,
    };
