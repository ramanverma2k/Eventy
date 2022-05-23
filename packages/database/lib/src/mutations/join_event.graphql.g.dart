// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_event.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesMutationJoinEvent _$VariablesMutationJoinEventFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationJoinEvent(
      eventId: json['eventId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$VariablesMutationJoinEventToJson(
        VariablesMutationJoinEvent instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'userId': instance.userId,
    };

MutationJoinEvent _$MutationJoinEventFromJson(Map<String, dynamic> json) =>
    MutationJoinEvent(
      insert_attending_one: json['insert_attending_one'] == null
          ? null
          : MutationJoinEvent$insertAttendingOne.fromJson(
              json['insert_attending_one'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationJoinEventToJson(MutationJoinEvent instance) =>
    <String, dynamic>{
      'insert_attending_one': instance.insert_attending_one?.toJson(),
      '__typename': instance.$__typename,
    };

MutationJoinEvent$insertAttendingOne
    _$MutationJoinEvent$insertAttendingOneFromJson(Map<String, dynamic> json) =>
        MutationJoinEvent$insertAttendingOne(
          id: json['id'] as int,
          user_id: json['user_id'] as String?,
          event_id: json['event_id'] as String?,
          $__typename: json['__typename'] as String,
        );

Map<String, dynamic> _$MutationJoinEvent$insertAttendingOneToJson(
        MutationJoinEvent$insertAttendingOne instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'event_id': instance.event_id,
      '__typename': instance.$__typename,
    };
