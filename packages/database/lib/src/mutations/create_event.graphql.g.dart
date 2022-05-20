// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_event.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesMutationCreateEvent _$VariablesMutationCreateEventFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationCreateEvent(
      id: json['id'] as String,
      name: json['name'] as String,
      start_date: DateTime.parse(json['start_date'] as String),
      end_date: DateTime.parse(json['end_date'] as String),
      created_at: DateTime.parse(json['created_at'] as String),
      location: json['location'] as Map<String, dynamic>,
      description: json['description'] as String,
      type_id: json['type_id'] as int,
      banner_image: json['banner_image'] as String,
      image: json['image'] as String,
      organizer: json['organizer'] as String,
    );

Map<String, dynamic> _$VariablesMutationCreateEventToJson(
        VariablesMutationCreateEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'start_date': instance.start_date.toIso8601String(),
      'end_date': instance.end_date.toIso8601String(),
      'created_at': instance.created_at.toIso8601String(),
      'location': instance.location,
      'description': instance.description,
      'type_id': instance.type_id,
      'banner_image': instance.banner_image,
      'image': instance.image,
      'organizer': instance.organizer,
    };

MutationCreateEvent _$MutationCreateEventFromJson(Map<String, dynamic> json) =>
    MutationCreateEvent(
      insert_events_one: json['insert_events_one'] == null
          ? null
          : MutationCreateEvent$insertEventsOne.fromJson(
              json['insert_events_one'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateEventToJson(
        MutationCreateEvent instance) =>
    <String, dynamic>{
      'insert_events_one': instance.insert_events_one?.toJson(),
      '__typename': instance.$__typename,
    };

MutationCreateEvent$insertEventsOne
    _$MutationCreateEvent$insertEventsOneFromJson(Map<String, dynamic> json) =>
        MutationCreateEvent$insertEventsOne(
          id: json['id'] as String,
          name: json['name'] as String,
          created_at: DateTime.parse(json['created_at'] as String),
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationCreateEvent$insertEventsOneToJson(
        MutationCreateEvent$insertEventsOne instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.created_at.toIso8601String(),
      '__typename': instance.$__typename,
    };
