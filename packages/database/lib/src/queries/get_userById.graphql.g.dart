// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_userById.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryGetUserById _$VariablesQueryGetUserByIdFromJson(
        Map<String, dynamic> json) =>
    VariablesQueryGetUserById(
      id: json['id'] as String,
    );

Map<String, dynamic> _$VariablesQueryGetUserByIdToJson(
        VariablesQueryGetUserById instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

QueryGetUserById _$QueryGetUserByIdFromJson(Map<String, dynamic> json) =>
    QueryGetUserById(
      users: (json['users'] as List<dynamic>)
          .map(
              (e) => QueryGetUserById$users.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetUserByIdToJson(QueryGetUserById instance) =>
    <String, dynamic>{
      'users': instance.users.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

QueryGetUserById$users _$QueryGetUserById$usersFromJson(
        Map<String, dynamic> json) =>
    QueryGetUserById$users(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String?,
      contact_no: json['contact_no'] as String,
      image: json['image'] as String?,
      description: json['description'] as String?,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetUserById$usersToJson(
        QueryGetUserById$users instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'contact_no': instance.contact_no,
      'image': instance.image,
      'description': instance.description,
      '__typename': instance.$__typename,
    };
