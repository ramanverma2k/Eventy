// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesMutationCreateAdminAccount
    _$VariablesMutationCreateAdminAccountFromJson(Map<String, dynamic> json) =>
        VariablesMutationCreateAdminAccount(
          id: json['id'] as String,
          username: json['username'] as String,
          password: json['password'] as String,
          email: json['email'] as String,
          first_name: json['first_name'] as String,
          last_name: json['last_name'] as String?,
          contact_no: json['contact_no'] as String,
          image: json['image'] as String?,
          description: json['description'] as String?,
        );

Map<String, dynamic> _$VariablesMutationCreateAdminAccountToJson(
        VariablesMutationCreateAdminAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'contact_no': instance.contact_no,
      'image': instance.image,
      'description': instance.description,
    };

MutationCreateAdminAccount _$MutationCreateAdminAccountFromJson(
        Map<String, dynamic> json) =>
    MutationCreateAdminAccount(
      insert_users_one: json['insert_users_one'] == null
          ? null
          : MutationCreateAdminAccount$insertUsersOne.fromJson(
              json['insert_users_one'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateAdminAccountToJson(
        MutationCreateAdminAccount instance) =>
    <String, dynamic>{
      'insert_users_one': instance.insert_users_one?.toJson(),
      '__typename': instance.$__typename,
    };

MutationCreateAdminAccount$insertUsersOne
    _$MutationCreateAdminAccount$insertUsersOneFromJson(
            Map<String, dynamic> json) =>
        MutationCreateAdminAccount$insertUsersOne(
          $__typename: json['__typename'] as String,
          id: json['id'] as String,
          username: json['username'] as String,
          email: json['email'] as String,
          first_name: json['first_name'] as String,
          last_name: json['last_name'] as String?,
          contact_no: json['contact_no'] as String,
          image: json['image'] as String?,
          description: json['description'] as String?,
        );

Map<String, dynamic> _$MutationCreateAdminAccount$insertUsersOneToJson(
        MutationCreateAdminAccount$insertUsersOne instance) =>
    <String, dynamic>{
      '__typename': instance.$__typename,
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'contact_no': instance.contact_no,
      'image': instance.image,
      'description': instance.description,
    };
