// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_account.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesMutationCreateAccount _$VariablesMutationCreateAccountFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationCreateAccount(
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

Map<String, dynamic> _$VariablesMutationCreateAccountToJson(
        VariablesMutationCreateAccount instance) =>
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

MutationCreateAccount _$MutationCreateAccountFromJson(
        Map<String, dynamic> json) =>
    MutationCreateAccount(
      insert_users_one: json['insert_users_one'] == null
          ? null
          : MutationCreateAccount$insertUsersOne.fromJson(
              json['insert_users_one'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateAccountToJson(
        MutationCreateAccount instance) =>
    <String, dynamic>{
      'insert_users_one': instance.insert_users_one?.toJson(),
      '__typename': instance.$__typename,
    };

MutationCreateAccount$insertUsersOne
    _$MutationCreateAccount$insertUsersOneFromJson(Map<String, dynamic> json) =>
        MutationCreateAccount$insertUsersOne(
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

Map<String, dynamic> _$MutationCreateAccount$insertUsersOneToJson(
        MutationCreateAccount$insertUsersOne instance) =>
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
