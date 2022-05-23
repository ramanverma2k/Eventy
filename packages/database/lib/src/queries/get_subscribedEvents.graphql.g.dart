// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subscribedEvents.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryGetSubscribedEvents _$VariablesQueryGetSubscribedEventsFromJson(
        Map<String, dynamic> json) =>
    VariablesQueryGetSubscribedEvents(
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$VariablesQueryGetSubscribedEventsToJson(
        VariablesQueryGetSubscribedEvents instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

QueryGetSubscribedEvents _$QueryGetSubscribedEventsFromJson(
        Map<String, dynamic> json) =>
    QueryGetSubscribedEvents(
      events: (json['events'] as List<dynamic>)
          .map((e) => QueryGetSubscribedEvents$events.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetSubscribedEventsToJson(
        QueryGetSubscribedEvents instance) =>
    <String, dynamic>{
      'events': instance.events.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

QueryGetSubscribedEvents$events _$QueryGetSubscribedEvents$eventsFromJson(
        Map<String, dynamic> json) =>
    QueryGetSubscribedEvents$events(
      banner_image: json['banner_image'] as String?,
      description: json['description'] as String?,
      end_date: DateTime.parse(json['end_date'] as String),
      id: json['id'] as String,
      image: json['image'] as String?,
      location: json['location'] as Map<String, dynamic>?,
      name: json['name'] as String,
      start_date: DateTime.parse(json['start_date'] as String),
      user: QueryGetSubscribedEvents$events$user.fromJson(
          json['user'] as Map<String, dynamic>),
      event_type: QueryGetSubscribedEvents$events$eventType.fromJson(
          json['event_type'] as Map<String, dynamic>),
      attendings_aggregate:
          QueryGetSubscribedEvents$events$attendingsAggregate.fromJson(
              json['attendings_aggregate'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetSubscribedEvents$eventsToJson(
        QueryGetSubscribedEvents$events instance) =>
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

QueryGetSubscribedEvents$events$user
    _$QueryGetSubscribedEvents$events$userFromJson(Map<String, dynamic> json) =>
        QueryGetSubscribedEvents$events$user(
          id: json['id'] as String,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryGetSubscribedEvents$events$userToJson(
        QueryGetSubscribedEvents$events$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      '__typename': instance.$__typename,
    };

QueryGetSubscribedEvents$events$eventType
    _$QueryGetSubscribedEvents$events$eventTypeFromJson(
            Map<String, dynamic> json) =>
        QueryGetSubscribedEvents$events$eventType(
          name: json['name'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$QueryGetSubscribedEvents$events$eventTypeToJson(
        QueryGetSubscribedEvents$events$eventType instance) =>
    <String, dynamic>{
      'name': instance.name,
      '__typename': instance.$__typename,
    };

QueryGetSubscribedEvents$events$attendingsAggregate
    _$QueryGetSubscribedEvents$events$attendingsAggregateFromJson(
            Map<String, dynamic> json) =>
        QueryGetSubscribedEvents$events$attendingsAggregate(
          aggregate: json['aggregate'] == null
              ? null
              : QueryGetSubscribedEvents$events$attendingsAggregate$aggregate
                  .fromJson(json['aggregate'] as Map<String, dynamic>),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$QueryGetSubscribedEvents$events$attendingsAggregateToJson(
            QueryGetSubscribedEvents$events$attendingsAggregate instance) =>
        <String, dynamic>{
          'aggregate': instance.aggregate?.toJson(),
          '__typename': instance.$__typename,
        };

QueryGetSubscribedEvents$events$attendingsAggregate$aggregate
    _$QueryGetSubscribedEvents$events$attendingsAggregate$aggregateFromJson(
            Map<String, dynamic> json) =>
        QueryGetSubscribedEvents$events$attendingsAggregate$aggregate(
          count: json['count'] as int,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic>
    _$QueryGetSubscribedEvents$events$attendingsAggregate$aggregateToJson(
            QueryGetSubscribedEvents$events$attendingsAggregate$aggregate
                instance) =>
        <String, dynamic>{
          'count': instance.count,
          '__typename': instance.$__typename,
        };
