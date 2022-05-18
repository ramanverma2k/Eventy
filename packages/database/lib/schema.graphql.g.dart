// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputattendingAggregateOrderBy _$InputattendingAggregateOrderByFromJson(
        Map<String, dynamic> json) =>
    InputattendingAggregateOrderBy(
      avg: json['avg'] == null
          ? null
          : InputattendingAvgOrderBy.fromJson(
              json['avg'] as Map<String, dynamic>),
      count: $enumDecodeNullable(_$EnumorderByEnumMap, json['count'],
          unknownValue: EnumorderBy.$unknown),
      max: json['max'] == null
          ? null
          : InputattendingMaxOrderBy.fromJson(
              json['max'] as Map<String, dynamic>),
      min: json['min'] == null
          ? null
          : InputattendingMinOrderBy.fromJson(
              json['min'] as Map<String, dynamic>),
      stddev: json['stddev'] == null
          ? null
          : InputattendingStddevOrderBy.fromJson(
              json['stddev'] as Map<String, dynamic>),
      stddev_pop: json['stddev_pop'] == null
          ? null
          : InputattendingStddevPopOrderBy.fromJson(
              json['stddev_pop'] as Map<String, dynamic>),
      stddev_samp: json['stddev_samp'] == null
          ? null
          : InputattendingStddevSampOrderBy.fromJson(
              json['stddev_samp'] as Map<String, dynamic>),
      sum: json['sum'] == null
          ? null
          : InputattendingSumOrderBy.fromJson(
              json['sum'] as Map<String, dynamic>),
      var_pop: json['var_pop'] == null
          ? null
          : InputattendingVarPopOrderBy.fromJson(
              json['var_pop'] as Map<String, dynamic>),
      var_samp: json['var_samp'] == null
          ? null
          : InputattendingVarSampOrderBy.fromJson(
              json['var_samp'] as Map<String, dynamic>),
      variance: json['variance'] == null
          ? null
          : InputattendingVarianceOrderBy.fromJson(
              json['variance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputattendingAggregateOrderByToJson(
        InputattendingAggregateOrderBy instance) =>
    <String, dynamic>{
      'avg': instance.avg?.toJson(),
      'count': _$EnumorderByEnumMap[instance.count],
      'max': instance.max?.toJson(),
      'min': instance.min?.toJson(),
      'stddev': instance.stddev?.toJson(),
      'stddev_pop': instance.stddev_pop?.toJson(),
      'stddev_samp': instance.stddev_samp?.toJson(),
      'sum': instance.sum?.toJson(),
      'var_pop': instance.var_pop?.toJson(),
      'var_samp': instance.var_samp?.toJson(),
      'variance': instance.variance?.toJson(),
    };

const _$EnumorderByEnumMap = {
  EnumorderBy.asc: 'asc',
  EnumorderBy.ascNullsFirst: 'asc_nulls_first',
  EnumorderBy.ascNullsLast: 'asc_nulls_last',
  EnumorderBy.desc: 'desc',
  EnumorderBy.descNullsFirst: 'desc_nulls_first',
  EnumorderBy.descNullsLast: 'desc_nulls_last',
  EnumorderBy.$unknown: r'$unknown',
};

InputattendingArrRelInsertInput _$InputattendingArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    InputattendingArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              InputattendingInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      on_conflict: json['on_conflict'] == null
          ? null
          : InputattendingOnConflict.fromJson(
              json['on_conflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputattendingArrRelInsertInputToJson(
        InputattendingArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'on_conflict': instance.on_conflict?.toJson(),
    };

InputattendingAvgOrderBy _$InputattendingAvgOrderByFromJson(
        Map<String, dynamic> json) =>
    InputattendingAvgOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputattendingAvgOrderByToJson(
        InputattendingAvgOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputattendingBoolExp _$InputattendingBoolExpFromJson(
        Map<String, dynamic> json) =>
    InputattendingBoolExp(
      $_and: (json['_and'] as List<dynamic>?)
          ?.map(
              (e) => InputattendingBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $_not: json['_not'] == null
          ? null
          : InputattendingBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $_or: (json['_or'] as List<dynamic>?)
          ?.map(
              (e) => InputattendingBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      event: json['event'] == null
          ? null
          : InputeventsBoolExp.fromJson(json['event'] as Map<String, dynamic>),
      event_id: json['event_id'] == null
          ? null
          : InputuuidComparisonExp.fromJson(
              json['event_id'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : InputIntComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : InputusersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
      user_id: json['user_id'] == null
          ? null
          : InputuuidComparisonExp.fromJson(
              json['user_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputattendingBoolExpToJson(
        InputattendingBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$_and?.map((e) => e.toJson()).toList(),
      '_not': instance.$_not?.toJson(),
      '_or': instance.$_or?.map((e) => e.toJson()).toList(),
      'event': instance.event?.toJson(),
      'event_id': instance.event_id?.toJson(),
      'id': instance.id?.toJson(),
      'user': instance.user?.toJson(),
      'user_id': instance.user_id?.toJson(),
    };

InputattendingIncInput _$InputattendingIncInputFromJson(
        Map<String, dynamic> json) =>
    InputattendingIncInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$InputattendingIncInputToJson(
        InputattendingIncInput instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InputattendingInsertInput _$InputattendingInsertInputFromJson(
        Map<String, dynamic> json) =>
    InputattendingInsertInput(
      event: json['event'] == null
          ? null
          : InputeventsObjRelInsertInput.fromJson(
              json['event'] as Map<String, dynamic>),
      event_id: json['event_id'] as String?,
      id: json['id'] as int?,
      user: json['user'] == null
          ? null
          : InputusersObjRelInsertInput.fromJson(
              json['user'] as Map<String, dynamic>),
      user_id: json['user_id'] as String?,
    );

Map<String, dynamic> _$InputattendingInsertInputToJson(
        InputattendingInsertInput instance) =>
    <String, dynamic>{
      'event': instance.event?.toJson(),
      'event_id': instance.event_id,
      'id': instance.id,
      'user': instance.user?.toJson(),
      'user_id': instance.user_id,
    };

InputattendingMaxOrderBy _$InputattendingMaxOrderByFromJson(
        Map<String, dynamic> json) =>
    InputattendingMaxOrderBy(
      event_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['event_id'],
          unknownValue: EnumorderBy.$unknown),
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
      user_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['user_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputattendingMaxOrderByToJson(
        InputattendingMaxOrderBy instance) =>
    <String, dynamic>{
      'event_id': _$EnumorderByEnumMap[instance.event_id],
      'id': _$EnumorderByEnumMap[instance.id],
      'user_id': _$EnumorderByEnumMap[instance.user_id],
    };

InputattendingMinOrderBy _$InputattendingMinOrderByFromJson(
        Map<String, dynamic> json) =>
    InputattendingMinOrderBy(
      event_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['event_id'],
          unknownValue: EnumorderBy.$unknown),
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
      user_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['user_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputattendingMinOrderByToJson(
        InputattendingMinOrderBy instance) =>
    <String, dynamic>{
      'event_id': _$EnumorderByEnumMap[instance.event_id],
      'id': _$EnumorderByEnumMap[instance.id],
      'user_id': _$EnumorderByEnumMap[instance.user_id],
    };

InputattendingOnConflict _$InputattendingOnConflictFromJson(
        Map<String, dynamic> json) =>
    InputattendingOnConflict(
      constraint: $enumDecode(
          _$EnumattendingConstraintEnumMap, json['constraint'],
          unknownValue: EnumattendingConstraint.$unknown),
      update_columns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$EnumattendingUpdateColumnEnumMap, e,
              unknownValue: EnumattendingUpdateColumn.$unknown))
          .toList(),
      where: json['where'] == null
          ? null
          : InputattendingBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputattendingOnConflictToJson(
        InputattendingOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$EnumattendingConstraintEnumMap[instance.constraint],
      'update_columns': instance.update_columns
          .map((e) => _$EnumattendingUpdateColumnEnumMap[e])
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$EnumattendingConstraintEnumMap = {
  EnumattendingConstraint.attendingPkey: 'attending_pkey',
  EnumattendingConstraint.$unknown: r'$unknown',
};

const _$EnumattendingUpdateColumnEnumMap = {
  EnumattendingUpdateColumn.eventId: 'event_id',
  EnumattendingUpdateColumn.id: 'id',
  EnumattendingUpdateColumn.userId: 'user_id',
  EnumattendingUpdateColumn.$unknown: r'$unknown',
};

InputattendingOrderBy _$InputattendingOrderByFromJson(
        Map<String, dynamic> json) =>
    InputattendingOrderBy(
      event: json['event'] == null
          ? null
          : InputeventsOrderBy.fromJson(json['event'] as Map<String, dynamic>),
      event_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['event_id'],
          unknownValue: EnumorderBy.$unknown),
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
      user: json['user'] == null
          ? null
          : InputusersOrderBy.fromJson(json['user'] as Map<String, dynamic>),
      user_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['user_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputattendingOrderByToJson(
        InputattendingOrderBy instance) =>
    <String, dynamic>{
      'event': instance.event?.toJson(),
      'event_id': _$EnumorderByEnumMap[instance.event_id],
      'id': _$EnumorderByEnumMap[instance.id],
      'user': instance.user?.toJson(),
      'user_id': _$EnumorderByEnumMap[instance.user_id],
    };

InputattendingPkColumnsInput _$InputattendingPkColumnsInputFromJson(
        Map<String, dynamic> json) =>
    InputattendingPkColumnsInput(
      id: json['id'] as int,
    );

Map<String, dynamic> _$InputattendingPkColumnsInputToJson(
        InputattendingPkColumnsInput instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InputattendingSetInput _$InputattendingSetInputFromJson(
        Map<String, dynamic> json) =>
    InputattendingSetInput(
      event_id: json['event_id'] as String?,
      id: json['id'] as int?,
      user_id: json['user_id'] as String?,
    );

Map<String, dynamic> _$InputattendingSetInputToJson(
        InputattendingSetInput instance) =>
    <String, dynamic>{
      'event_id': instance.event_id,
      'id': instance.id,
      'user_id': instance.user_id,
    };

InputattendingStddevOrderBy _$InputattendingStddevOrderByFromJson(
        Map<String, dynamic> json) =>
    InputattendingStddevOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputattendingStddevOrderByToJson(
        InputattendingStddevOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputattendingStddevPopOrderBy _$InputattendingStddevPopOrderByFromJson(
        Map<String, dynamic> json) =>
    InputattendingStddevPopOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputattendingStddevPopOrderByToJson(
        InputattendingStddevPopOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputattendingStddevSampOrderBy _$InputattendingStddevSampOrderByFromJson(
        Map<String, dynamic> json) =>
    InputattendingStddevSampOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputattendingStddevSampOrderByToJson(
        InputattendingStddevSampOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputattendingSumOrderBy _$InputattendingSumOrderByFromJson(
        Map<String, dynamic> json) =>
    InputattendingSumOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputattendingSumOrderByToJson(
        InputattendingSumOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputattendingVarPopOrderBy _$InputattendingVarPopOrderByFromJson(
        Map<String, dynamic> json) =>
    InputattendingVarPopOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputattendingVarPopOrderByToJson(
        InputattendingVarPopOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputattendingVarSampOrderBy _$InputattendingVarSampOrderByFromJson(
        Map<String, dynamic> json) =>
    InputattendingVarSampOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputattendingVarSampOrderByToJson(
        InputattendingVarSampOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputattendingVarianceOrderBy _$InputattendingVarianceOrderByFromJson(
        Map<String, dynamic> json) =>
    InputattendingVarianceOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputattendingVarianceOrderByToJson(
        InputattendingVarianceOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputBooleanComparisonExp _$InputBooleanComparisonExpFromJson(
        Map<String, dynamic> json) =>
    InputBooleanComparisonExp(
      $_eq: json['_eq'] as bool?,
      $_gt: json['_gt'] as bool?,
      $_gte: json['_gte'] as bool?,
      $_in: (json['_in'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      $_is_null: json['_is_null'] as bool?,
      $_lt: json['_lt'] as bool?,
      $_lte: json['_lte'] as bool?,
      $_neq: json['_neq'] as bool?,
      $_nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as bool).toList(),
    );

Map<String, dynamic> _$InputBooleanComparisonExpToJson(
        InputBooleanComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$_eq,
      '_gt': instance.$_gt,
      '_gte': instance.$_gte,
      '_in': instance.$_in,
      '_is_null': instance.$_is_null,
      '_lt': instance.$_lt,
      '_lte': instance.$_lte,
      '_neq': instance.$_neq,
      '_nin': instance.$_nin,
    };

InputeventTypeBoolExp _$InputeventTypeBoolExpFromJson(
        Map<String, dynamic> json) =>
    InputeventTypeBoolExp(
      $_and: (json['_and'] as List<dynamic>?)
          ?.map(
              (e) => InputeventTypeBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $_not: json['_not'] == null
          ? null
          : InputeventTypeBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $_or: (json['_or'] as List<dynamic>?)
          ?.map(
              (e) => InputeventTypeBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      events: json['events'] == null
          ? null
          : InputeventsBoolExp.fromJson(json['events'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : InputIntComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputeventTypeBoolExpToJson(
        InputeventTypeBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$_and?.map((e) => e.toJson()).toList(),
      '_not': instance.$_not?.toJson(),
      '_or': instance.$_or?.map((e) => e.toJson()).toList(),
      'events': instance.events?.toJson(),
      'id': instance.id?.toJson(),
      'name': instance.name?.toJson(),
    };

InputeventTypeIncInput _$InputeventTypeIncInputFromJson(
        Map<String, dynamic> json) =>
    InputeventTypeIncInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$InputeventTypeIncInputToJson(
        InputeventTypeIncInput instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InputeventTypeInsertInput _$InputeventTypeInsertInputFromJson(
        Map<String, dynamic> json) =>
    InputeventTypeInsertInput(
      events: json['events'] == null
          ? null
          : InputeventsArrRelInsertInput.fromJson(
              json['events'] as Map<String, dynamic>),
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$InputeventTypeInsertInputToJson(
        InputeventTypeInsertInput instance) =>
    <String, dynamic>{
      'events': instance.events?.toJson(),
      'id': instance.id,
      'name': instance.name,
    };

InputeventTypeObjRelInsertInput _$InputeventTypeObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    InputeventTypeObjRelInsertInput(
      data: InputeventTypeInsertInput.fromJson(
          json['data'] as Map<String, dynamic>),
      on_conflict: json['on_conflict'] == null
          ? null
          : InputeventTypeOnConflict.fromJson(
              json['on_conflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputeventTypeObjRelInsertInputToJson(
        InputeventTypeObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'on_conflict': instance.on_conflict?.toJson(),
    };

InputeventTypeOnConflict _$InputeventTypeOnConflictFromJson(
        Map<String, dynamic> json) =>
    InputeventTypeOnConflict(
      constraint: $enumDecode(
          _$EnumeventTypeConstraintEnumMap, json['constraint'],
          unknownValue: EnumeventTypeConstraint.$unknown),
      update_columns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$EnumeventTypeUpdateColumnEnumMap, e,
              unknownValue: EnumeventTypeUpdateColumn.$unknown))
          .toList(),
      where: json['where'] == null
          ? null
          : InputeventTypeBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputeventTypeOnConflictToJson(
        InputeventTypeOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$EnumeventTypeConstraintEnumMap[instance.constraint],
      'update_columns': instance.update_columns
          .map((e) => _$EnumeventTypeUpdateColumnEnumMap[e])
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$EnumeventTypeConstraintEnumMap = {
  EnumeventTypeConstraint.eventTypePkey: 'event_type_pkey',
  EnumeventTypeConstraint.$unknown: r'$unknown',
};

const _$EnumeventTypeUpdateColumnEnumMap = {
  EnumeventTypeUpdateColumn.id: 'id',
  EnumeventTypeUpdateColumn.name: 'name',
  EnumeventTypeUpdateColumn.$unknown: r'$unknown',
};

InputeventTypeOrderBy _$InputeventTypeOrderByFromJson(
        Map<String, dynamic> json) =>
    InputeventTypeOrderBy(
      events_aggregate: json['events_aggregate'] == null
          ? null
          : InputeventsAggregateOrderBy.fromJson(
              json['events_aggregate'] as Map<String, dynamic>),
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
      name: $enumDecodeNullable(_$EnumorderByEnumMap, json['name'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputeventTypeOrderByToJson(
        InputeventTypeOrderBy instance) =>
    <String, dynamic>{
      'events_aggregate': instance.events_aggregate?.toJson(),
      'id': _$EnumorderByEnumMap[instance.id],
      'name': _$EnumorderByEnumMap[instance.name],
    };

InputeventTypePkColumnsInput _$InputeventTypePkColumnsInputFromJson(
        Map<String, dynamic> json) =>
    InputeventTypePkColumnsInput(
      id: json['id'] as int,
    );

Map<String, dynamic> _$InputeventTypePkColumnsInputToJson(
        InputeventTypePkColumnsInput instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InputeventTypeSetInput _$InputeventTypeSetInputFromJson(
        Map<String, dynamic> json) =>
    InputeventTypeSetInput(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$InputeventTypeSetInputToJson(
        InputeventTypeSetInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

InputeventsAggregateOrderBy _$InputeventsAggregateOrderByFromJson(
        Map<String, dynamic> json) =>
    InputeventsAggregateOrderBy(
      avg: json['avg'] == null
          ? null
          : InputeventsAvgOrderBy.fromJson(json['avg'] as Map<String, dynamic>),
      count: $enumDecodeNullable(_$EnumorderByEnumMap, json['count'],
          unknownValue: EnumorderBy.$unknown),
      max: json['max'] == null
          ? null
          : InputeventsMaxOrderBy.fromJson(json['max'] as Map<String, dynamic>),
      min: json['min'] == null
          ? null
          : InputeventsMinOrderBy.fromJson(json['min'] as Map<String, dynamic>),
      stddev: json['stddev'] == null
          ? null
          : InputeventsStddevOrderBy.fromJson(
              json['stddev'] as Map<String, dynamic>),
      stddev_pop: json['stddev_pop'] == null
          ? null
          : InputeventsStddevPopOrderBy.fromJson(
              json['stddev_pop'] as Map<String, dynamic>),
      stddev_samp: json['stddev_samp'] == null
          ? null
          : InputeventsStddevSampOrderBy.fromJson(
              json['stddev_samp'] as Map<String, dynamic>),
      sum: json['sum'] == null
          ? null
          : InputeventsSumOrderBy.fromJson(json['sum'] as Map<String, dynamic>),
      var_pop: json['var_pop'] == null
          ? null
          : InputeventsVarPopOrderBy.fromJson(
              json['var_pop'] as Map<String, dynamic>),
      var_samp: json['var_samp'] == null
          ? null
          : InputeventsVarSampOrderBy.fromJson(
              json['var_samp'] as Map<String, dynamic>),
      variance: json['variance'] == null
          ? null
          : InputeventsVarianceOrderBy.fromJson(
              json['variance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputeventsAggregateOrderByToJson(
        InputeventsAggregateOrderBy instance) =>
    <String, dynamic>{
      'avg': instance.avg?.toJson(),
      'count': _$EnumorderByEnumMap[instance.count],
      'max': instance.max?.toJson(),
      'min': instance.min?.toJson(),
      'stddev': instance.stddev?.toJson(),
      'stddev_pop': instance.stddev_pop?.toJson(),
      'stddev_samp': instance.stddev_samp?.toJson(),
      'sum': instance.sum?.toJson(),
      'var_pop': instance.var_pop?.toJson(),
      'var_samp': instance.var_samp?.toJson(),
      'variance': instance.variance?.toJson(),
    };

InputeventsArrRelInsertInput _$InputeventsArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    InputeventsArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map(
              (e) => InputeventsInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      on_conflict: json['on_conflict'] == null
          ? null
          : InputeventsOnConflict.fromJson(
              json['on_conflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputeventsArrRelInsertInputToJson(
        InputeventsArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'on_conflict': instance.on_conflict?.toJson(),
    };

InputeventsAvgOrderBy _$InputeventsAvgOrderByFromJson(
        Map<String, dynamic> json) =>
    InputeventsAvgOrderBy(
      type_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['type_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputeventsAvgOrderByToJson(
        InputeventsAvgOrderBy instance) =>
    <String, dynamic>{
      'type_id': _$EnumorderByEnumMap[instance.type_id],
    };

InputeventsBoolExp _$InputeventsBoolExpFromJson(Map<String, dynamic> json) =>
    InputeventsBoolExp(
      $_and: (json['_and'] as List<dynamic>?)
          ?.map((e) => InputeventsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $_not: json['_not'] == null
          ? null
          : InputeventsBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $_or: (json['_or'] as List<dynamic>?)
          ?.map((e) => InputeventsBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      address: json['address'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['address'] as Map<String, dynamic>),
      attendings: json['attendings'] == null
          ? null
          : InputattendingBoolExp.fromJson(
              json['attendings'] as Map<String, dynamic>),
      banner_image: json['banner_image'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['banner_image'] as Map<String, dynamic>),
      created_at: json['created_at'] == null
          ? null
          : InputtimestampComparisonExp.fromJson(
              json['created_at'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['description'] as Map<String, dynamic>),
      end_date: json['end_date'] == null
          ? null
          : InputtimestampComparisonExp.fromJson(
              json['end_date'] as Map<String, dynamic>),
      event_type: json['event_type'] == null
          ? null
          : InputeventTypeBoolExp.fromJson(
              json['event_type'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : InputuuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['image'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : InputjsonComparisonExp.fromJson(
              json['location'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['name'] as Map<String, dynamic>),
      organizer: json['organizer'] == null
          ? null
          : InputuuidComparisonExp.fromJson(
              json['organizer'] as Map<String, dynamic>),
      participatings: json['participatings'] == null
          ? null
          : InputparticipatingBoolExp.fromJson(
              json['participatings'] as Map<String, dynamic>),
      start_date: json['start_date'] == null
          ? null
          : InputtimestampComparisonExp.fromJson(
              json['start_date'] as Map<String, dynamic>),
      type_id: json['type_id'] == null
          ? null
          : InputIntComparisonExp.fromJson(
              json['type_id'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : InputusersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputeventsBoolExpToJson(InputeventsBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$_and?.map((e) => e.toJson()).toList(),
      '_not': instance.$_not?.toJson(),
      '_or': instance.$_or?.map((e) => e.toJson()).toList(),
      'address': instance.address?.toJson(),
      'attendings': instance.attendings?.toJson(),
      'banner_image': instance.banner_image?.toJson(),
      'created_at': instance.created_at?.toJson(),
      'description': instance.description?.toJson(),
      'end_date': instance.end_date?.toJson(),
      'event_type': instance.event_type?.toJson(),
      'id': instance.id?.toJson(),
      'image': instance.image?.toJson(),
      'location': instance.location?.toJson(),
      'name': instance.name?.toJson(),
      'organizer': instance.organizer?.toJson(),
      'participatings': instance.participatings?.toJson(),
      'start_date': instance.start_date?.toJson(),
      'type_id': instance.type_id?.toJson(),
      'user': instance.user?.toJson(),
    };

InputeventsIncInput _$InputeventsIncInputFromJson(Map<String, dynamic> json) =>
    InputeventsIncInput(
      type_id: json['type_id'] as int?,
    );

Map<String, dynamic> _$InputeventsIncInputToJson(
        InputeventsIncInput instance) =>
    <String, dynamic>{
      'type_id': instance.type_id,
    };

InputeventsInsertInput _$InputeventsInsertInputFromJson(
        Map<String, dynamic> json) =>
    InputeventsInsertInput(
      address: json['address'] as String?,
      attendings: json['attendings'] == null
          ? null
          : InputattendingArrRelInsertInput.fromJson(
              json['attendings'] as Map<String, dynamic>),
      banner_image: json['banner_image'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      description: json['description'] as String?,
      end_date: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      event_type: json['event_type'] == null
          ? null
          : InputeventTypeObjRelInsertInput.fromJson(
              json['event_type'] as Map<String, dynamic>),
      id: json['id'] as String?,
      image: json['image'] as String?,
      location: json['location'] as Map<String, dynamic>?,
      name: json['name'] as String?,
      organizer: json['organizer'] as String?,
      participatings: json['participatings'] == null
          ? null
          : InputparticipatingArrRelInsertInput.fromJson(
              json['participatings'] as Map<String, dynamic>),
      start_date: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      type_id: json['type_id'] as int?,
      user: json['user'] == null
          ? null
          : InputusersObjRelInsertInput.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputeventsInsertInputToJson(
        InputeventsInsertInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'attendings': instance.attendings?.toJson(),
      'banner_image': instance.banner_image,
      'created_at': instance.created_at?.toIso8601String(),
      'description': instance.description,
      'end_date': instance.end_date?.toIso8601String(),
      'event_type': instance.event_type?.toJson(),
      'id': instance.id,
      'image': instance.image,
      'location': instance.location,
      'name': instance.name,
      'organizer': instance.organizer,
      'participatings': instance.participatings?.toJson(),
      'start_date': instance.start_date?.toIso8601String(),
      'type_id': instance.type_id,
      'user': instance.user?.toJson(),
    };

InputeventsMaxOrderBy _$InputeventsMaxOrderByFromJson(
        Map<String, dynamic> json) =>
    InputeventsMaxOrderBy(
      address: $enumDecodeNullable(_$EnumorderByEnumMap, json['address'],
          unknownValue: EnumorderBy.$unknown),
      banner_image: $enumDecodeNullable(
          _$EnumorderByEnumMap, json['banner_image'],
          unknownValue: EnumorderBy.$unknown),
      created_at: $enumDecodeNullable(_$EnumorderByEnumMap, json['created_at'],
          unknownValue: EnumorderBy.$unknown),
      description: $enumDecodeNullable(
          _$EnumorderByEnumMap, json['description'],
          unknownValue: EnumorderBy.$unknown),
      end_date: $enumDecodeNullable(_$EnumorderByEnumMap, json['end_date'],
          unknownValue: EnumorderBy.$unknown),
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
      image: $enumDecodeNullable(_$EnumorderByEnumMap, json['image'],
          unknownValue: EnumorderBy.$unknown),
      name: $enumDecodeNullable(_$EnumorderByEnumMap, json['name'],
          unknownValue: EnumorderBy.$unknown),
      organizer: $enumDecodeNullable(_$EnumorderByEnumMap, json['organizer'],
          unknownValue: EnumorderBy.$unknown),
      start_date: $enumDecodeNullable(_$EnumorderByEnumMap, json['start_date'],
          unknownValue: EnumorderBy.$unknown),
      type_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['type_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputeventsMaxOrderByToJson(
        InputeventsMaxOrderBy instance) =>
    <String, dynamic>{
      'address': _$EnumorderByEnumMap[instance.address],
      'banner_image': _$EnumorderByEnumMap[instance.banner_image],
      'created_at': _$EnumorderByEnumMap[instance.created_at],
      'description': _$EnumorderByEnumMap[instance.description],
      'end_date': _$EnumorderByEnumMap[instance.end_date],
      'id': _$EnumorderByEnumMap[instance.id],
      'image': _$EnumorderByEnumMap[instance.image],
      'name': _$EnumorderByEnumMap[instance.name],
      'organizer': _$EnumorderByEnumMap[instance.organizer],
      'start_date': _$EnumorderByEnumMap[instance.start_date],
      'type_id': _$EnumorderByEnumMap[instance.type_id],
    };

InputeventsMinOrderBy _$InputeventsMinOrderByFromJson(
        Map<String, dynamic> json) =>
    InputeventsMinOrderBy(
      address: $enumDecodeNullable(_$EnumorderByEnumMap, json['address'],
          unknownValue: EnumorderBy.$unknown),
      banner_image: $enumDecodeNullable(
          _$EnumorderByEnumMap, json['banner_image'],
          unknownValue: EnumorderBy.$unknown),
      created_at: $enumDecodeNullable(_$EnumorderByEnumMap, json['created_at'],
          unknownValue: EnumorderBy.$unknown),
      description: $enumDecodeNullable(
          _$EnumorderByEnumMap, json['description'],
          unknownValue: EnumorderBy.$unknown),
      end_date: $enumDecodeNullable(_$EnumorderByEnumMap, json['end_date'],
          unknownValue: EnumorderBy.$unknown),
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
      image: $enumDecodeNullable(_$EnumorderByEnumMap, json['image'],
          unknownValue: EnumorderBy.$unknown),
      name: $enumDecodeNullable(_$EnumorderByEnumMap, json['name'],
          unknownValue: EnumorderBy.$unknown),
      organizer: $enumDecodeNullable(_$EnumorderByEnumMap, json['organizer'],
          unknownValue: EnumorderBy.$unknown),
      start_date: $enumDecodeNullable(_$EnumorderByEnumMap, json['start_date'],
          unknownValue: EnumorderBy.$unknown),
      type_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['type_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputeventsMinOrderByToJson(
        InputeventsMinOrderBy instance) =>
    <String, dynamic>{
      'address': _$EnumorderByEnumMap[instance.address],
      'banner_image': _$EnumorderByEnumMap[instance.banner_image],
      'created_at': _$EnumorderByEnumMap[instance.created_at],
      'description': _$EnumorderByEnumMap[instance.description],
      'end_date': _$EnumorderByEnumMap[instance.end_date],
      'id': _$EnumorderByEnumMap[instance.id],
      'image': _$EnumorderByEnumMap[instance.image],
      'name': _$EnumorderByEnumMap[instance.name],
      'organizer': _$EnumorderByEnumMap[instance.organizer],
      'start_date': _$EnumorderByEnumMap[instance.start_date],
      'type_id': _$EnumorderByEnumMap[instance.type_id],
    };

InputeventsObjRelInsertInput _$InputeventsObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    InputeventsObjRelInsertInput(
      data:
          InputeventsInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      on_conflict: json['on_conflict'] == null
          ? null
          : InputeventsOnConflict.fromJson(
              json['on_conflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputeventsObjRelInsertInputToJson(
        InputeventsObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'on_conflict': instance.on_conflict?.toJson(),
    };

InputeventsOnConflict _$InputeventsOnConflictFromJson(
        Map<String, dynamic> json) =>
    InputeventsOnConflict(
      constraint: $enumDecode(_$EnumeventsConstraintEnumMap, json['constraint'],
          unknownValue: EnumeventsConstraint.$unknown),
      update_columns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$EnumeventsUpdateColumnEnumMap, e,
              unknownValue: EnumeventsUpdateColumn.$unknown))
          .toList(),
      where: json['where'] == null
          ? null
          : InputeventsBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputeventsOnConflictToJson(
        InputeventsOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$EnumeventsConstraintEnumMap[instance.constraint],
      'update_columns': instance.update_columns
          .map((e) => _$EnumeventsUpdateColumnEnumMap[e])
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$EnumeventsConstraintEnumMap = {
  EnumeventsConstraint.eventsPkey: 'events_pkey',
  EnumeventsConstraint.$unknown: r'$unknown',
};

const _$EnumeventsUpdateColumnEnumMap = {
  EnumeventsUpdateColumn.address: 'address',
  EnumeventsUpdateColumn.bannerImage: 'banner_image',
  EnumeventsUpdateColumn.createdAt: 'created_at',
  EnumeventsUpdateColumn.description: 'description',
  EnumeventsUpdateColumn.endDate: 'end_date',
  EnumeventsUpdateColumn.id: 'id',
  EnumeventsUpdateColumn.image: 'image',
  EnumeventsUpdateColumn.location: 'location',
  EnumeventsUpdateColumn.name: 'name',
  EnumeventsUpdateColumn.organizer: 'organizer',
  EnumeventsUpdateColumn.startDate: 'start_date',
  EnumeventsUpdateColumn.typeId: 'type_id',
  EnumeventsUpdateColumn.$unknown: r'$unknown',
};

InputeventsOrderBy _$InputeventsOrderByFromJson(Map<String, dynamic> json) =>
    InputeventsOrderBy(
      address: $enumDecodeNullable(_$EnumorderByEnumMap, json['address'],
          unknownValue: EnumorderBy.$unknown),
      attendings_aggregate: json['attendings_aggregate'] == null
          ? null
          : InputattendingAggregateOrderBy.fromJson(
              json['attendings_aggregate'] as Map<String, dynamic>),
      banner_image: $enumDecodeNullable(
          _$EnumorderByEnumMap, json['banner_image'],
          unknownValue: EnumorderBy.$unknown),
      created_at: $enumDecodeNullable(_$EnumorderByEnumMap, json['created_at'],
          unknownValue: EnumorderBy.$unknown),
      description: $enumDecodeNullable(
          _$EnumorderByEnumMap, json['description'],
          unknownValue: EnumorderBy.$unknown),
      end_date: $enumDecodeNullable(_$EnumorderByEnumMap, json['end_date'],
          unknownValue: EnumorderBy.$unknown),
      event_type: json['event_type'] == null
          ? null
          : InputeventTypeOrderBy.fromJson(
              json['event_type'] as Map<String, dynamic>),
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
      image: $enumDecodeNullable(_$EnumorderByEnumMap, json['image'],
          unknownValue: EnumorderBy.$unknown),
      location: $enumDecodeNullable(_$EnumorderByEnumMap, json['location'],
          unknownValue: EnumorderBy.$unknown),
      name: $enumDecodeNullable(_$EnumorderByEnumMap, json['name'],
          unknownValue: EnumorderBy.$unknown),
      organizer: $enumDecodeNullable(_$EnumorderByEnumMap, json['organizer'],
          unknownValue: EnumorderBy.$unknown),
      participatings_aggregate: json['participatings_aggregate'] == null
          ? null
          : InputparticipatingAggregateOrderBy.fromJson(
              json['participatings_aggregate'] as Map<String, dynamic>),
      start_date: $enumDecodeNullable(_$EnumorderByEnumMap, json['start_date'],
          unknownValue: EnumorderBy.$unknown),
      type_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['type_id'],
          unknownValue: EnumorderBy.$unknown),
      user: json['user'] == null
          ? null
          : InputusersOrderBy.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputeventsOrderByToJson(InputeventsOrderBy instance) =>
    <String, dynamic>{
      'address': _$EnumorderByEnumMap[instance.address],
      'attendings_aggregate': instance.attendings_aggregate?.toJson(),
      'banner_image': _$EnumorderByEnumMap[instance.banner_image],
      'created_at': _$EnumorderByEnumMap[instance.created_at],
      'description': _$EnumorderByEnumMap[instance.description],
      'end_date': _$EnumorderByEnumMap[instance.end_date],
      'event_type': instance.event_type?.toJson(),
      'id': _$EnumorderByEnumMap[instance.id],
      'image': _$EnumorderByEnumMap[instance.image],
      'location': _$EnumorderByEnumMap[instance.location],
      'name': _$EnumorderByEnumMap[instance.name],
      'organizer': _$EnumorderByEnumMap[instance.organizer],
      'participatings_aggregate': instance.participatings_aggregate?.toJson(),
      'start_date': _$EnumorderByEnumMap[instance.start_date],
      'type_id': _$EnumorderByEnumMap[instance.type_id],
      'user': instance.user?.toJson(),
    };

InputeventsPkColumnsInput _$InputeventsPkColumnsInputFromJson(
        Map<String, dynamic> json) =>
    InputeventsPkColumnsInput(
      id: json['id'] as String,
    );

Map<String, dynamic> _$InputeventsPkColumnsInputToJson(
        InputeventsPkColumnsInput instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InputeventsSetInput _$InputeventsSetInputFromJson(Map<String, dynamic> json) =>
    InputeventsSetInput(
      address: json['address'] as String?,
      banner_image: json['banner_image'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      description: json['description'] as String?,
      end_date: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      id: json['id'] as String?,
      image: json['image'] as String?,
      location: json['location'] as Map<String, dynamic>?,
      name: json['name'] as String?,
      organizer: json['organizer'] as String?,
      start_date: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      type_id: json['type_id'] as int?,
    );

Map<String, dynamic> _$InputeventsSetInputToJson(
        InputeventsSetInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'banner_image': instance.banner_image,
      'created_at': instance.created_at?.toIso8601String(),
      'description': instance.description,
      'end_date': instance.end_date?.toIso8601String(),
      'id': instance.id,
      'image': instance.image,
      'location': instance.location,
      'name': instance.name,
      'organizer': instance.organizer,
      'start_date': instance.start_date?.toIso8601String(),
      'type_id': instance.type_id,
    };

InputeventsStddevOrderBy _$InputeventsStddevOrderByFromJson(
        Map<String, dynamic> json) =>
    InputeventsStddevOrderBy(
      type_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['type_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputeventsStddevOrderByToJson(
        InputeventsStddevOrderBy instance) =>
    <String, dynamic>{
      'type_id': _$EnumorderByEnumMap[instance.type_id],
    };

InputeventsStddevPopOrderBy _$InputeventsStddevPopOrderByFromJson(
        Map<String, dynamic> json) =>
    InputeventsStddevPopOrderBy(
      type_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['type_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputeventsStddevPopOrderByToJson(
        InputeventsStddevPopOrderBy instance) =>
    <String, dynamic>{
      'type_id': _$EnumorderByEnumMap[instance.type_id],
    };

InputeventsStddevSampOrderBy _$InputeventsStddevSampOrderByFromJson(
        Map<String, dynamic> json) =>
    InputeventsStddevSampOrderBy(
      type_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['type_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputeventsStddevSampOrderByToJson(
        InputeventsStddevSampOrderBy instance) =>
    <String, dynamic>{
      'type_id': _$EnumorderByEnumMap[instance.type_id],
    };

InputeventsSumOrderBy _$InputeventsSumOrderByFromJson(
        Map<String, dynamic> json) =>
    InputeventsSumOrderBy(
      type_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['type_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputeventsSumOrderByToJson(
        InputeventsSumOrderBy instance) =>
    <String, dynamic>{
      'type_id': _$EnumorderByEnumMap[instance.type_id],
    };

InputeventsVarPopOrderBy _$InputeventsVarPopOrderByFromJson(
        Map<String, dynamic> json) =>
    InputeventsVarPopOrderBy(
      type_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['type_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputeventsVarPopOrderByToJson(
        InputeventsVarPopOrderBy instance) =>
    <String, dynamic>{
      'type_id': _$EnumorderByEnumMap[instance.type_id],
    };

InputeventsVarSampOrderBy _$InputeventsVarSampOrderByFromJson(
        Map<String, dynamic> json) =>
    InputeventsVarSampOrderBy(
      type_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['type_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputeventsVarSampOrderByToJson(
        InputeventsVarSampOrderBy instance) =>
    <String, dynamic>{
      'type_id': _$EnumorderByEnumMap[instance.type_id],
    };

InputeventsVarianceOrderBy _$InputeventsVarianceOrderByFromJson(
        Map<String, dynamic> json) =>
    InputeventsVarianceOrderBy(
      type_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['type_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputeventsVarianceOrderByToJson(
        InputeventsVarianceOrderBy instance) =>
    <String, dynamic>{
      'type_id': _$EnumorderByEnumMap[instance.type_id],
    };

InputIntComparisonExp _$InputIntComparisonExpFromJson(
        Map<String, dynamic> json) =>
    InputIntComparisonExp(
      $_eq: json['_eq'] as int?,
      $_gt: json['_gt'] as int?,
      $_gte: json['_gte'] as int?,
      $_in: (json['_in'] as List<dynamic>?)?.map((e) => e as int).toList(),
      $_is_null: json['_is_null'] as bool?,
      $_lt: json['_lt'] as int?,
      $_lte: json['_lte'] as int?,
      $_neq: json['_neq'] as int?,
      $_nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$InputIntComparisonExpToJson(
        InputIntComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$_eq,
      '_gt': instance.$_gt,
      '_gte': instance.$_gte,
      '_in': instance.$_in,
      '_is_null': instance.$_is_null,
      '_lt': instance.$_lt,
      '_lte': instance.$_lte,
      '_neq': instance.$_neq,
      '_nin': instance.$_nin,
    };

InputjsonComparisonExp _$InputjsonComparisonExpFromJson(
        Map<String, dynamic> json) =>
    InputjsonComparisonExp(
      $_eq: json['_eq'] as Map<String, dynamic>?,
      $_gt: json['_gt'] as Map<String, dynamic>?,
      $_gte: json['_gte'] as Map<String, dynamic>?,
      $_in: (json['_in'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      $_is_null: json['_is_null'] as bool?,
      $_lt: json['_lt'] as Map<String, dynamic>?,
      $_lte: json['_lte'] as Map<String, dynamic>?,
      $_neq: json['_neq'] as Map<String, dynamic>?,
      $_nin: (json['_nin'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$InputjsonComparisonExpToJson(
        InputjsonComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$_eq,
      '_gt': instance.$_gt,
      '_gte': instance.$_gte,
      '_in': instance.$_in,
      '_is_null': instance.$_is_null,
      '_lt': instance.$_lt,
      '_lte': instance.$_lte,
      '_neq': instance.$_neq,
      '_nin': instance.$_nin,
    };

InputparticipatingAggregateOrderBy _$InputparticipatingAggregateOrderByFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingAggregateOrderBy(
      avg: json['avg'] == null
          ? null
          : InputparticipatingAvgOrderBy.fromJson(
              json['avg'] as Map<String, dynamic>),
      count: $enumDecodeNullable(_$EnumorderByEnumMap, json['count'],
          unknownValue: EnumorderBy.$unknown),
      max: json['max'] == null
          ? null
          : InputparticipatingMaxOrderBy.fromJson(
              json['max'] as Map<String, dynamic>),
      min: json['min'] == null
          ? null
          : InputparticipatingMinOrderBy.fromJson(
              json['min'] as Map<String, dynamic>),
      stddev: json['stddev'] == null
          ? null
          : InputparticipatingStddevOrderBy.fromJson(
              json['stddev'] as Map<String, dynamic>),
      stddev_pop: json['stddev_pop'] == null
          ? null
          : InputparticipatingStddevPopOrderBy.fromJson(
              json['stddev_pop'] as Map<String, dynamic>),
      stddev_samp: json['stddev_samp'] == null
          ? null
          : InputparticipatingStddevSampOrderBy.fromJson(
              json['stddev_samp'] as Map<String, dynamic>),
      sum: json['sum'] == null
          ? null
          : InputparticipatingSumOrderBy.fromJson(
              json['sum'] as Map<String, dynamic>),
      var_pop: json['var_pop'] == null
          ? null
          : InputparticipatingVarPopOrderBy.fromJson(
              json['var_pop'] as Map<String, dynamic>),
      var_samp: json['var_samp'] == null
          ? null
          : InputparticipatingVarSampOrderBy.fromJson(
              json['var_samp'] as Map<String, dynamic>),
      variance: json['variance'] == null
          ? null
          : InputparticipatingVarianceOrderBy.fromJson(
              json['variance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputparticipatingAggregateOrderByToJson(
        InputparticipatingAggregateOrderBy instance) =>
    <String, dynamic>{
      'avg': instance.avg?.toJson(),
      'count': _$EnumorderByEnumMap[instance.count],
      'max': instance.max?.toJson(),
      'min': instance.min?.toJson(),
      'stddev': instance.stddev?.toJson(),
      'stddev_pop': instance.stddev_pop?.toJson(),
      'stddev_samp': instance.stddev_samp?.toJson(),
      'sum': instance.sum?.toJson(),
      'var_pop': instance.var_pop?.toJson(),
      'var_samp': instance.var_samp?.toJson(),
      'variance': instance.variance?.toJson(),
    };

InputparticipatingArrRelInsertInput
    _$InputparticipatingArrRelInsertInputFromJson(Map<String, dynamic> json) =>
        InputparticipatingArrRelInsertInput(
          data: (json['data'] as List<dynamic>)
              .map((e) => InputparticipatingInsertInput.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          on_conflict: json['on_conflict'] == null
              ? null
              : InputparticipatingOnConflict.fromJson(
                  json['on_conflict'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$InputparticipatingArrRelInsertInputToJson(
        InputparticipatingArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'on_conflict': instance.on_conflict?.toJson(),
    };

InputparticipatingAvgOrderBy _$InputparticipatingAvgOrderByFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingAvgOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputparticipatingAvgOrderByToJson(
        InputparticipatingAvgOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputparticipatingBoolExp _$InputparticipatingBoolExpFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingBoolExp(
      $_and: (json['_and'] as List<dynamic>?)
          ?.map((e) =>
              InputparticipatingBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $_not: json['_not'] == null
          ? null
          : InputparticipatingBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $_or: (json['_or'] as List<dynamic>?)
          ?.map((e) =>
              InputparticipatingBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      approved: json['approved'] == null
          ? null
          : InputBooleanComparisonExp.fromJson(
              json['approved'] as Map<String, dynamic>),
      event: json['event'] == null
          ? null
          : InputeventsBoolExp.fromJson(json['event'] as Map<String, dynamic>),
      event_id: json['event_id'] == null
          ? null
          : InputuuidComparisonExp.fromJson(
              json['event_id'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : InputIntComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : InputusersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
      user_id: json['user_id'] == null
          ? null
          : InputuuidComparisonExp.fromJson(
              json['user_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputparticipatingBoolExpToJson(
        InputparticipatingBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$_and?.map((e) => e.toJson()).toList(),
      '_not': instance.$_not?.toJson(),
      '_or': instance.$_or?.map((e) => e.toJson()).toList(),
      'approved': instance.approved?.toJson(),
      'event': instance.event?.toJson(),
      'event_id': instance.event_id?.toJson(),
      'id': instance.id?.toJson(),
      'user': instance.user?.toJson(),
      'user_id': instance.user_id?.toJson(),
    };

InputparticipatingIncInput _$InputparticipatingIncInputFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingIncInput(
      id: json['id'] as int?,
    );

Map<String, dynamic> _$InputparticipatingIncInputToJson(
        InputparticipatingIncInput instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InputparticipatingInsertInput _$InputparticipatingInsertInputFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingInsertInput(
      approved: json['approved'] as bool?,
      event: json['event'] == null
          ? null
          : InputeventsObjRelInsertInput.fromJson(
              json['event'] as Map<String, dynamic>),
      event_id: json['event_id'] as String?,
      id: json['id'] as int?,
      user: json['user'] == null
          ? null
          : InputusersObjRelInsertInput.fromJson(
              json['user'] as Map<String, dynamic>),
      user_id: json['user_id'] as String?,
    );

Map<String, dynamic> _$InputparticipatingInsertInputToJson(
        InputparticipatingInsertInput instance) =>
    <String, dynamic>{
      'approved': instance.approved,
      'event': instance.event?.toJson(),
      'event_id': instance.event_id,
      'id': instance.id,
      'user': instance.user?.toJson(),
      'user_id': instance.user_id,
    };

InputparticipatingMaxOrderBy _$InputparticipatingMaxOrderByFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingMaxOrderBy(
      event_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['event_id'],
          unknownValue: EnumorderBy.$unknown),
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
      user_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['user_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputparticipatingMaxOrderByToJson(
        InputparticipatingMaxOrderBy instance) =>
    <String, dynamic>{
      'event_id': _$EnumorderByEnumMap[instance.event_id],
      'id': _$EnumorderByEnumMap[instance.id],
      'user_id': _$EnumorderByEnumMap[instance.user_id],
    };

InputparticipatingMinOrderBy _$InputparticipatingMinOrderByFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingMinOrderBy(
      event_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['event_id'],
          unknownValue: EnumorderBy.$unknown),
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
      user_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['user_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputparticipatingMinOrderByToJson(
        InputparticipatingMinOrderBy instance) =>
    <String, dynamic>{
      'event_id': _$EnumorderByEnumMap[instance.event_id],
      'id': _$EnumorderByEnumMap[instance.id],
      'user_id': _$EnumorderByEnumMap[instance.user_id],
    };

InputparticipatingOnConflict _$InputparticipatingOnConflictFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingOnConflict(
      constraint: $enumDecode(
          _$EnumparticipatingConstraintEnumMap, json['constraint'],
          unknownValue: EnumparticipatingConstraint.$unknown),
      update_columns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$EnumparticipatingUpdateColumnEnumMap, e,
              unknownValue: EnumparticipatingUpdateColumn.$unknown))
          .toList(),
      where: json['where'] == null
          ? null
          : InputparticipatingBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputparticipatingOnConflictToJson(
        InputparticipatingOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$EnumparticipatingConstraintEnumMap[instance.constraint],
      'update_columns': instance.update_columns
          .map((e) => _$EnumparticipatingUpdateColumnEnumMap[e])
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$EnumparticipatingConstraintEnumMap = {
  EnumparticipatingConstraint.participatingPkey: 'participating_pkey',
  EnumparticipatingConstraint.$unknown: r'$unknown',
};

const _$EnumparticipatingUpdateColumnEnumMap = {
  EnumparticipatingUpdateColumn.approved: 'approved',
  EnumparticipatingUpdateColumn.eventId: 'event_id',
  EnumparticipatingUpdateColumn.id: 'id',
  EnumparticipatingUpdateColumn.userId: 'user_id',
  EnumparticipatingUpdateColumn.$unknown: r'$unknown',
};

InputparticipatingOrderBy _$InputparticipatingOrderByFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingOrderBy(
      approved: $enumDecodeNullable(_$EnumorderByEnumMap, json['approved'],
          unknownValue: EnumorderBy.$unknown),
      event: json['event'] == null
          ? null
          : InputeventsOrderBy.fromJson(json['event'] as Map<String, dynamic>),
      event_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['event_id'],
          unknownValue: EnumorderBy.$unknown),
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
      user: json['user'] == null
          ? null
          : InputusersOrderBy.fromJson(json['user'] as Map<String, dynamic>),
      user_id: $enumDecodeNullable(_$EnumorderByEnumMap, json['user_id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputparticipatingOrderByToJson(
        InputparticipatingOrderBy instance) =>
    <String, dynamic>{
      'approved': _$EnumorderByEnumMap[instance.approved],
      'event': instance.event?.toJson(),
      'event_id': _$EnumorderByEnumMap[instance.event_id],
      'id': _$EnumorderByEnumMap[instance.id],
      'user': instance.user?.toJson(),
      'user_id': _$EnumorderByEnumMap[instance.user_id],
    };

InputparticipatingPkColumnsInput _$InputparticipatingPkColumnsInputFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingPkColumnsInput(
      id: json['id'] as int,
    );

Map<String, dynamic> _$InputparticipatingPkColumnsInputToJson(
        InputparticipatingPkColumnsInput instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InputparticipatingSetInput _$InputparticipatingSetInputFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingSetInput(
      approved: json['approved'] as bool?,
      event_id: json['event_id'] as String?,
      id: json['id'] as int?,
      user_id: json['user_id'] as String?,
    );

Map<String, dynamic> _$InputparticipatingSetInputToJson(
        InputparticipatingSetInput instance) =>
    <String, dynamic>{
      'approved': instance.approved,
      'event_id': instance.event_id,
      'id': instance.id,
      'user_id': instance.user_id,
    };

InputparticipatingStddevOrderBy _$InputparticipatingStddevOrderByFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingStddevOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputparticipatingStddevOrderByToJson(
        InputparticipatingStddevOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputparticipatingStddevPopOrderBy _$InputparticipatingStddevPopOrderByFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingStddevPopOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputparticipatingStddevPopOrderByToJson(
        InputparticipatingStddevPopOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputparticipatingStddevSampOrderBy
    _$InputparticipatingStddevSampOrderByFromJson(Map<String, dynamic> json) =>
        InputparticipatingStddevSampOrderBy(
          id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
              unknownValue: EnumorderBy.$unknown),
        );

Map<String, dynamic> _$InputparticipatingStddevSampOrderByToJson(
        InputparticipatingStddevSampOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputparticipatingSumOrderBy _$InputparticipatingSumOrderByFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingSumOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputparticipatingSumOrderByToJson(
        InputparticipatingSumOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputparticipatingVarPopOrderBy _$InputparticipatingVarPopOrderByFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingVarPopOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputparticipatingVarPopOrderByToJson(
        InputparticipatingVarPopOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputparticipatingVarSampOrderBy _$InputparticipatingVarSampOrderByFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingVarSampOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputparticipatingVarSampOrderByToJson(
        InputparticipatingVarSampOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputparticipatingVarianceOrderBy _$InputparticipatingVarianceOrderByFromJson(
        Map<String, dynamic> json) =>
    InputparticipatingVarianceOrderBy(
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputparticipatingVarianceOrderByToJson(
        InputparticipatingVarianceOrderBy instance) =>
    <String, dynamic>{
      'id': _$EnumorderByEnumMap[instance.id],
    };

InputStringComparisonExp _$InputStringComparisonExpFromJson(
        Map<String, dynamic> json) =>
    InputStringComparisonExp(
      $_eq: json['_eq'] as String?,
      $_gt: json['_gt'] as String?,
      $_gte: json['_gte'] as String?,
      $_ilike: json['_ilike'] as String?,
      $_in: (json['_in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $_iregex: json['_iregex'] as String?,
      $_is_null: json['_is_null'] as bool?,
      $_like: json['_like'] as String?,
      $_lt: json['_lt'] as String?,
      $_lte: json['_lte'] as String?,
      $_neq: json['_neq'] as String?,
      $_nilike: json['_nilike'] as String?,
      $_nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $_niregex: json['_niregex'] as String?,
      $_nlike: json['_nlike'] as String?,
      $_nregex: json['_nregex'] as String?,
      $_nsimilar: json['_nsimilar'] as String?,
      $_regex: json['_regex'] as String?,
      $_similar: json['_similar'] as String?,
    );

Map<String, dynamic> _$InputStringComparisonExpToJson(
        InputStringComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$_eq,
      '_gt': instance.$_gt,
      '_gte': instance.$_gte,
      '_ilike': instance.$_ilike,
      '_in': instance.$_in,
      '_iregex': instance.$_iregex,
      '_is_null': instance.$_is_null,
      '_like': instance.$_like,
      '_lt': instance.$_lt,
      '_lte': instance.$_lte,
      '_neq': instance.$_neq,
      '_nilike': instance.$_nilike,
      '_nin': instance.$_nin,
      '_niregex': instance.$_niregex,
      '_nlike': instance.$_nlike,
      '_nregex': instance.$_nregex,
      '_nsimilar': instance.$_nsimilar,
      '_regex': instance.$_regex,
      '_similar': instance.$_similar,
    };

InputtimestampComparisonExp _$InputtimestampComparisonExpFromJson(
        Map<String, dynamic> json) =>
    InputtimestampComparisonExp(
      $_eq: json['_eq'] == null ? null : DateTime.parse(json['_eq'] as String),
      $_gt: json['_gt'] == null ? null : DateTime.parse(json['_gt'] as String),
      $_gte:
          json['_gte'] == null ? null : DateTime.parse(json['_gte'] as String),
      $_in: (json['_in'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      $_is_null: json['_is_null'] as bool?,
      $_lt: json['_lt'] == null ? null : DateTime.parse(json['_lt'] as String),
      $_lte:
          json['_lte'] == null ? null : DateTime.parse(json['_lte'] as String),
      $_neq:
          json['_neq'] == null ? null : DateTime.parse(json['_neq'] as String),
      $_nin: (json['_nin'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
    );

Map<String, dynamic> _$InputtimestampComparisonExpToJson(
        InputtimestampComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$_eq?.toIso8601String(),
      '_gt': instance.$_gt?.toIso8601String(),
      '_gte': instance.$_gte?.toIso8601String(),
      '_in': instance.$_in?.map((e) => e.toIso8601String()).toList(),
      '_is_null': instance.$_is_null,
      '_lt': instance.$_lt?.toIso8601String(),
      '_lte': instance.$_lte?.toIso8601String(),
      '_neq': instance.$_neq?.toIso8601String(),
      '_nin': instance.$_nin?.map((e) => e.toIso8601String()).toList(),
    };

InputusersBoolExp _$InputusersBoolExpFromJson(Map<String, dynamic> json) =>
    InputusersBoolExp(
      $_and: (json['_and'] as List<dynamic>?)
          ?.map((e) => InputusersBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $_not: json['_not'] == null
          ? null
          : InputusersBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $_or: (json['_or'] as List<dynamic>?)
          ?.map((e) => InputusersBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      attendings: json['attendings'] == null
          ? null
          : InputattendingBoolExp.fromJson(
              json['attendings'] as Map<String, dynamic>),
      contact_no: json['contact_no'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['contact_no'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['description'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['email'] as Map<String, dynamic>),
      events: json['events'] == null
          ? null
          : InputeventsBoolExp.fromJson(json['events'] as Map<String, dynamic>),
      first_name: json['first_name'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['first_name'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : InputuuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['image'] as Map<String, dynamic>),
      is_admin: json['is_admin'] == null
          ? null
          : InputBooleanComparisonExp.fromJson(
              json['is_admin'] as Map<String, dynamic>),
      last_name: json['last_name'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['last_name'] as Map<String, dynamic>),
      participatings: json['participatings'] == null
          ? null
          : InputparticipatingBoolExp.fromJson(
              json['participatings'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['password'] as Map<String, dynamic>),
      username: json['username'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['username'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputusersBoolExpToJson(InputusersBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$_and?.map((e) => e.toJson()).toList(),
      '_not': instance.$_not?.toJson(),
      '_or': instance.$_or?.map((e) => e.toJson()).toList(),
      'attendings': instance.attendings?.toJson(),
      'contact_no': instance.contact_no?.toJson(),
      'description': instance.description?.toJson(),
      'email': instance.email?.toJson(),
      'events': instance.events?.toJson(),
      'first_name': instance.first_name?.toJson(),
      'id': instance.id?.toJson(),
      'image': instance.image?.toJson(),
      'is_admin': instance.is_admin?.toJson(),
      'last_name': instance.last_name?.toJson(),
      'participatings': instance.participatings?.toJson(),
      'password': instance.password?.toJson(),
      'username': instance.username?.toJson(),
    };

InputusersInsertInput _$InputusersInsertInputFromJson(
        Map<String, dynamic> json) =>
    InputusersInsertInput(
      attendings: json['attendings'] == null
          ? null
          : InputattendingArrRelInsertInput.fromJson(
              json['attendings'] as Map<String, dynamic>),
      contact_no: json['contact_no'] as String?,
      description: json['description'] as String?,
      email: json['email'] as String?,
      events: json['events'] == null
          ? null
          : InputeventsArrRelInsertInput.fromJson(
              json['events'] as Map<String, dynamic>),
      first_name: json['first_name'] as String?,
      id: json['id'] as String?,
      image: json['image'] as String?,
      is_admin: json['is_admin'] as bool?,
      last_name: json['last_name'] as String?,
      participatings: json['participatings'] == null
          ? null
          : InputparticipatingArrRelInsertInput.fromJson(
              json['participatings'] as Map<String, dynamic>),
      password: json['password'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$InputusersInsertInputToJson(
        InputusersInsertInput instance) =>
    <String, dynamic>{
      'attendings': instance.attendings?.toJson(),
      'contact_no': instance.contact_no,
      'description': instance.description,
      'email': instance.email,
      'events': instance.events?.toJson(),
      'first_name': instance.first_name,
      'id': instance.id,
      'image': instance.image,
      'is_admin': instance.is_admin,
      'last_name': instance.last_name,
      'participatings': instance.participatings?.toJson(),
      'password': instance.password,
      'username': instance.username,
    };

InputusersObjRelInsertInput _$InputusersObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    InputusersObjRelInsertInput(
      data:
          InputusersInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      on_conflict: json['on_conflict'] == null
          ? null
          : InputusersOnConflict.fromJson(
              json['on_conflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputusersObjRelInsertInputToJson(
        InputusersObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'on_conflict': instance.on_conflict?.toJson(),
    };

InputusersOnConflict _$InputusersOnConflictFromJson(
        Map<String, dynamic> json) =>
    InputusersOnConflict(
      constraint: $enumDecode(_$EnumusersConstraintEnumMap, json['constraint'],
          unknownValue: EnumusersConstraint.$unknown),
      update_columns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$EnumusersUpdateColumnEnumMap, e,
              unknownValue: EnumusersUpdateColumn.$unknown))
          .toList(),
      where: json['where'] == null
          ? null
          : InputusersBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputusersOnConflictToJson(
        InputusersOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$EnumusersConstraintEnumMap[instance.constraint],
      'update_columns': instance.update_columns
          .map((e) => _$EnumusersUpdateColumnEnumMap[e])
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$EnumusersConstraintEnumMap = {
  EnumusersConstraint.usersPkey: 'users_pkey',
  EnumusersConstraint.usersUsernameKey: 'users_username_key',
  EnumusersConstraint.$unknown: r'$unknown',
};

const _$EnumusersUpdateColumnEnumMap = {
  EnumusersUpdateColumn.contactNo: 'contact_no',
  EnumusersUpdateColumn.description: 'description',
  EnumusersUpdateColumn.email: 'email',
  EnumusersUpdateColumn.firstName: 'first_name',
  EnumusersUpdateColumn.id: 'id',
  EnumusersUpdateColumn.image: 'image',
  EnumusersUpdateColumn.isAdmin: 'is_admin',
  EnumusersUpdateColumn.lastName: 'last_name',
  EnumusersUpdateColumn.password: 'password',
  EnumusersUpdateColumn.username: 'username',
  EnumusersUpdateColumn.$unknown: r'$unknown',
};

InputusersOrderBy _$InputusersOrderByFromJson(Map<String, dynamic> json) =>
    InputusersOrderBy(
      attendings_aggregate: json['attendings_aggregate'] == null
          ? null
          : InputattendingAggregateOrderBy.fromJson(
              json['attendings_aggregate'] as Map<String, dynamic>),
      contact_no: $enumDecodeNullable(_$EnumorderByEnumMap, json['contact_no'],
          unknownValue: EnumorderBy.$unknown),
      description: $enumDecodeNullable(
          _$EnumorderByEnumMap, json['description'],
          unknownValue: EnumorderBy.$unknown),
      email: $enumDecodeNullable(_$EnumorderByEnumMap, json['email'],
          unknownValue: EnumorderBy.$unknown),
      events_aggregate: json['events_aggregate'] == null
          ? null
          : InputeventsAggregateOrderBy.fromJson(
              json['events_aggregate'] as Map<String, dynamic>),
      first_name: $enumDecodeNullable(_$EnumorderByEnumMap, json['first_name'],
          unknownValue: EnumorderBy.$unknown),
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
      image: $enumDecodeNullable(_$EnumorderByEnumMap, json['image'],
          unknownValue: EnumorderBy.$unknown),
      is_admin: $enumDecodeNullable(_$EnumorderByEnumMap, json['is_admin'],
          unknownValue: EnumorderBy.$unknown),
      last_name: $enumDecodeNullable(_$EnumorderByEnumMap, json['last_name'],
          unknownValue: EnumorderBy.$unknown),
      participatings_aggregate: json['participatings_aggregate'] == null
          ? null
          : InputparticipatingAggregateOrderBy.fromJson(
              json['participatings_aggregate'] as Map<String, dynamic>),
      password: $enumDecodeNullable(_$EnumorderByEnumMap, json['password'],
          unknownValue: EnumorderBy.$unknown),
      username: $enumDecodeNullable(_$EnumorderByEnumMap, json['username'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputusersOrderByToJson(InputusersOrderBy instance) =>
    <String, dynamic>{
      'attendings_aggregate': instance.attendings_aggregate?.toJson(),
      'contact_no': _$EnumorderByEnumMap[instance.contact_no],
      'description': _$EnumorderByEnumMap[instance.description],
      'email': _$EnumorderByEnumMap[instance.email],
      'events_aggregate': instance.events_aggregate?.toJson(),
      'first_name': _$EnumorderByEnumMap[instance.first_name],
      'id': _$EnumorderByEnumMap[instance.id],
      'image': _$EnumorderByEnumMap[instance.image],
      'is_admin': _$EnumorderByEnumMap[instance.is_admin],
      'last_name': _$EnumorderByEnumMap[instance.last_name],
      'participatings_aggregate': instance.participatings_aggregate?.toJson(),
      'password': _$EnumorderByEnumMap[instance.password],
      'username': _$EnumorderByEnumMap[instance.username],
    };

InputusersPkColumnsInput _$InputusersPkColumnsInputFromJson(
        Map<String, dynamic> json) =>
    InputusersPkColumnsInput(
      id: json['id'] as String,
    );

Map<String, dynamic> _$InputusersPkColumnsInputToJson(
        InputusersPkColumnsInput instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InputusersSetInput _$InputusersSetInputFromJson(Map<String, dynamic> json) =>
    InputusersSetInput(
      contact_no: json['contact_no'] as String?,
      description: json['description'] as String?,
      email: json['email'] as String?,
      first_name: json['first_name'] as String?,
      id: json['id'] as String?,
      image: json['image'] as String?,
      is_admin: json['is_admin'] as bool?,
      last_name: json['last_name'] as String?,
      password: json['password'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$InputusersSetInputToJson(InputusersSetInput instance) =>
    <String, dynamic>{
      'contact_no': instance.contact_no,
      'description': instance.description,
      'email': instance.email,
      'first_name': instance.first_name,
      'id': instance.id,
      'image': instance.image,
      'is_admin': instance.is_admin,
      'last_name': instance.last_name,
      'password': instance.password,
      'username': instance.username,
    };

InputuuidComparisonExp _$InputuuidComparisonExpFromJson(
        Map<String, dynamic> json) =>
    InputuuidComparisonExp(
      $_eq: json['_eq'] as String?,
      $_gt: json['_gt'] as String?,
      $_gte: json['_gte'] as String?,
      $_in: (json['_in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $_is_null: json['_is_null'] as bool?,
      $_lt: json['_lt'] as String?,
      $_lte: json['_lte'] as String?,
      $_neq: json['_neq'] as String?,
      $_nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$InputuuidComparisonExpToJson(
        InputuuidComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$_eq,
      '_gt': instance.$_gt,
      '_gte': instance.$_gte,
      '_in': instance.$_in,
      '_is_null': instance.$_is_null,
      '_lt': instance.$_lt,
      '_lte': instance.$_lte,
      '_neq': instance.$_neq,
      '_nin': instance.$_nin,
    };
