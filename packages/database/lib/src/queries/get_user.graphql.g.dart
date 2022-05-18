// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesQueryGetUser _$VariablesQueryGetUserFromJson(
        Map<String, dynamic> json) =>
    VariablesQueryGetUser(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$VariablesQueryGetUserToJson(
        VariablesQueryGetUser instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

QueryGetUser _$QueryGetUserFromJson(Map<String, dynamic> json) => QueryGetUser(
      users: (json['users'] as List<dynamic>)
          .map((e) => QueryGetUser$users.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetUserToJson(QueryGetUser instance) =>
    <String, dynamic>{
      'users': instance.users.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

QueryGetUser$users _$QueryGetUser$usersFromJson(Map<String, dynamic> json) =>
    QueryGetUser$users(
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

Map<String, dynamic> _$QueryGetUser$usersToJson(QueryGetUser$users instance) =>
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
