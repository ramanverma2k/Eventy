import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class InputattendingAggregateOrderBy {
  InputattendingAggregateOrderBy(
      {this.avg,
      this.count,
      this.max,
      this.min,
      this.stddev,
      this.stddev_pop,
      this.stddev_samp,
      this.sum,
      this.var_pop,
      this.var_samp,
      this.variance});

  @override
  factory InputattendingAggregateOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputattendingAggregateOrderByFromJson(json);

  final InputattendingAvgOrderBy? avg;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? count;

  final InputattendingMaxOrderBy? max;

  final InputattendingMinOrderBy? min;

  final InputattendingStddevOrderBy? stddev;

  final InputattendingStddevPopOrderBy? stddev_pop;

  final InputattendingStddevSampOrderBy? stddev_samp;

  final InputattendingSumOrderBy? sum;

  final InputattendingVarPopOrderBy? var_pop;

  final InputattendingVarSampOrderBy? var_samp;

  final InputattendingVarianceOrderBy? variance;

  Map<String, dynamic> toJson() => _$InputattendingAggregateOrderByToJson(this);
  int get hashCode {
    final l$avg = avg;
    final l$count = count;
    final l$max = max;
    final l$min = min;
    final l$stddev = stddev;
    final l$stddev_pop = stddev_pop;
    final l$stddev_samp = stddev_samp;
    final l$sum = sum;
    final l$var_pop = var_pop;
    final l$var_samp = var_samp;
    final l$variance = variance;
    return Object.hashAll([
      l$avg,
      l$count,
      l$max,
      l$min,
      l$stddev,
      l$stddev_pop,
      l$stddev_samp,
      l$sum,
      l$var_pop,
      l$var_samp,
      l$variance
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingAggregateOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$avg = avg;
    final lOther$avg = other.avg;
    if (l$avg != lOther$avg) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) return false;
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) return false;
    final l$stddev = stddev;
    final lOther$stddev = other.stddev;
    if (l$stddev != lOther$stddev) return false;
    final l$stddev_pop = stddev_pop;
    final lOther$stddev_pop = other.stddev_pop;
    if (l$stddev_pop != lOther$stddev_pop) return false;
    final l$stddev_samp = stddev_samp;
    final lOther$stddev_samp = other.stddev_samp;
    if (l$stddev_samp != lOther$stddev_samp) return false;
    final l$sum = sum;
    final lOther$sum = other.sum;
    if (l$sum != lOther$sum) return false;
    final l$var_pop = var_pop;
    final lOther$var_pop = other.var_pop;
    if (l$var_pop != lOther$var_pop) return false;
    final l$var_samp = var_samp;
    final lOther$var_samp = other.var_samp;
    if (l$var_samp != lOther$var_samp) return false;
    final l$variance = variance;
    final lOther$variance = other.variance;
    if (l$variance != lOther$variance) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingArrRelInsertInput {
  InputattendingArrRelInsertInput({required this.data, this.on_conflict});

  @override
  factory InputattendingArrRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$InputattendingArrRelInsertInputFromJson(json);

  final List<InputattendingInsertInput> data;

  final InputattendingOnConflict? on_conflict;

  Map<String, dynamic> toJson() =>
      _$InputattendingArrRelInsertInputToJson(this);
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll(
        [Object.hashAll(l$data.map((v) => v)), l$on_conflict]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingArrRelInsertInput) ||
        runtimeType != other.runtimeType) return false;
    final l$data = data;
    final lOther$data = other.data;
    if (l$data.length != lOther$data.length) return false;
    for (int i = 0; i < l$data.length; i++) {
      final l$data$entry = l$data[i];
      final lOther$data$entry = lOther$data[i];
      if (l$data$entry != lOther$data$entry) return false;
    }

    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (l$on_conflict != lOther$on_conflict) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingAvgOrderBy {
  InputattendingAvgOrderBy({this.id});

  @override
  factory InputattendingAvgOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputattendingAvgOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() => _$InputattendingAvgOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingAvgOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingBoolExp {
  InputattendingBoolExp(
      {this.$_and,
      this.$_not,
      this.$_or,
      this.event,
      this.event_id,
      this.id,
      this.user,
      this.user_id});

  @override
  factory InputattendingBoolExp.fromJson(Map<String, dynamic> json) =>
      _$InputattendingBoolExpFromJson(json);

  @JsonKey(name: '_and')
  final List<InputattendingBoolExp>? $_and;

  @JsonKey(name: '_not')
  final InputattendingBoolExp? $_not;

  @JsonKey(name: '_or')
  final List<InputattendingBoolExp>? $_or;

  final InputeventsBoolExp? event;

  final InputuuidComparisonExp? event_id;

  final InputIntComparisonExp? id;

  final InputusersBoolExp? user;

  final InputuuidComparisonExp? user_id;

  Map<String, dynamic> toJson() => _$InputattendingBoolExpToJson(this);
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$event = event;
    final l$event_id = event_id;
    final l$id = id;
    final l$user = user;
    final l$user_id = user_id;
    return Object.hashAll([
      l$$_and == null ? null : Object.hashAll(l$$_and.map((v) => v)),
      l$$_not,
      l$$_or == null ? null : Object.hashAll(l$$_or.map((v) => v)),
      l$event,
      l$event_id,
      l$id,
      l$user,
      l$user_id
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingBoolExp) || runtimeType != other.runtimeType)
      return false;
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) return false;
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) return false;
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }

    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (l$$_not != lOther$$_not) return false;
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) return false;
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) return false;
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }

    final l$event = event;
    final lOther$event = other.event;
    if (l$event != lOther$event) return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingIncInput {
  InputattendingIncInput({this.id});

  @override
  factory InputattendingIncInput.fromJson(Map<String, dynamic> json) =>
      _$InputattendingIncInputFromJson(json);

  final int? id;

  Map<String, dynamic> toJson() => _$InputattendingIncInputToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingIncInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingInsertInput {
  InputattendingInsertInput(
      {this.event, this.event_id, this.id, this.user, this.user_id});

  @override
  factory InputattendingInsertInput.fromJson(Map<String, dynamic> json) =>
      _$InputattendingInsertInputFromJson(json);

  final InputeventsObjRelInsertInput? event;

  final String? event_id;

  final int? id;

  final InputusersObjRelInsertInput? user;

  final String? user_id;

  Map<String, dynamic> toJson() => _$InputattendingInsertInputToJson(this);
  int get hashCode {
    final l$event = event;
    final l$event_id = event_id;
    final l$id = id;
    final l$user = user;
    final l$user_id = user_id;
    return Object.hashAll([l$event, l$event_id, l$id, l$user, l$user_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingInsertInput) ||
        runtimeType != other.runtimeType) return false;
    final l$event = event;
    final lOther$event = other.event;
    if (l$event != lOther$event) return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingMaxOrderBy {
  InputattendingMaxOrderBy({this.event_id, this.id, this.user_id});

  @override
  factory InputattendingMaxOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputattendingMaxOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? event_id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? user_id;

  Map<String, dynamic> toJson() => _$InputattendingMaxOrderByToJson(this);
  int get hashCode {
    final l$event_id = event_id;
    final l$id = id;
    final l$user_id = user_id;
    return Object.hashAll([l$event_id, l$id, l$user_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingMaxOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingMinOrderBy {
  InputattendingMinOrderBy({this.event_id, this.id, this.user_id});

  @override
  factory InputattendingMinOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputattendingMinOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? event_id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? user_id;

  Map<String, dynamic> toJson() => _$InputattendingMinOrderByToJson(this);
  int get hashCode {
    final l$event_id = event_id;
    final l$id = id;
    final l$user_id = user_id;
    return Object.hashAll([l$event_id, l$id, l$user_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingMinOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingOnConflict {
  InputattendingOnConflict(
      {required this.constraint, required this.update_columns, this.where});

  @override
  factory InputattendingOnConflict.fromJson(Map<String, dynamic> json) =>
      _$InputattendingOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: EnumattendingConstraint.$unknown)
  final EnumattendingConstraint constraint;

  @JsonKey(unknownEnumValue: EnumattendingUpdateColumn.$unknown)
  final List<EnumattendingUpdateColumn> update_columns;

  final InputattendingBoolExp? where;

  Map<String, dynamic> toJson() => _$InputattendingOnConflictToJson(this);
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      l$where
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingOnConflict) ||
        runtimeType != other.runtimeType) return false;
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) return false;
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) return false;
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) return false;
    }

    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingOrderBy {
  InputattendingOrderBy(
      {this.event, this.event_id, this.id, this.user, this.user_id});

  @override
  factory InputattendingOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputattendingOrderByFromJson(json);

  final InputeventsOrderBy? event;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? event_id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  final InputusersOrderBy? user;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? user_id;

  Map<String, dynamic> toJson() => _$InputattendingOrderByToJson(this);
  int get hashCode {
    final l$event = event;
    final l$event_id = event_id;
    final l$id = id;
    final l$user = user;
    final l$user_id = user_id;
    return Object.hashAll([l$event, l$event_id, l$id, l$user, l$user_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingOrderBy) || runtimeType != other.runtimeType)
      return false;
    final l$event = event;
    final lOther$event = other.event;
    if (l$event != lOther$event) return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingPkColumnsInput {
  InputattendingPkColumnsInput({required this.id});

  @override
  factory InputattendingPkColumnsInput.fromJson(Map<String, dynamic> json) =>
      _$InputattendingPkColumnsInputFromJson(json);

  final int id;

  Map<String, dynamic> toJson() => _$InputattendingPkColumnsInputToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingPkColumnsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingSetInput {
  InputattendingSetInput({this.event_id, this.id, this.user_id});

  @override
  factory InputattendingSetInput.fromJson(Map<String, dynamic> json) =>
      _$InputattendingSetInputFromJson(json);

  final String? event_id;

  final int? id;

  final String? user_id;

  Map<String, dynamic> toJson() => _$InputattendingSetInputToJson(this);
  int get hashCode {
    final l$event_id = event_id;
    final l$id = id;
    final l$user_id = user_id;
    return Object.hashAll([l$event_id, l$id, l$user_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingSetInput) || runtimeType != other.runtimeType)
      return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingStddevOrderBy {
  InputattendingStddevOrderBy({this.id});

  @override
  factory InputattendingStddevOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputattendingStddevOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() => _$InputattendingStddevOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingStddevOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingStddevPopOrderBy {
  InputattendingStddevPopOrderBy({this.id});

  @override
  factory InputattendingStddevPopOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputattendingStddevPopOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() => _$InputattendingStddevPopOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingStddevPopOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingStddevSampOrderBy {
  InputattendingStddevSampOrderBy({this.id});

  @override
  factory InputattendingStddevSampOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputattendingStddevSampOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() =>
      _$InputattendingStddevSampOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingStddevSampOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingSumOrderBy {
  InputattendingSumOrderBy({this.id});

  @override
  factory InputattendingSumOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputattendingSumOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() => _$InputattendingSumOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingSumOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingVarPopOrderBy {
  InputattendingVarPopOrderBy({this.id});

  @override
  factory InputattendingVarPopOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputattendingVarPopOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() => _$InputattendingVarPopOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingVarPopOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingVarSampOrderBy {
  InputattendingVarSampOrderBy({this.id});

  @override
  factory InputattendingVarSampOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputattendingVarSampOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() => _$InputattendingVarSampOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingVarSampOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputattendingVarianceOrderBy {
  InputattendingVarianceOrderBy({this.id});

  @override
  factory InputattendingVarianceOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputattendingVarianceOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() => _$InputattendingVarianceOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputattendingVarianceOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputBooleanComparisonExp {
  InputBooleanComparisonExp(
      {this.$_eq,
      this.$_gt,
      this.$_gte,
      this.$_in,
      this.$_is_null,
      this.$_lt,
      this.$_lte,
      this.$_neq,
      this.$_nin});

  @override
  factory InputBooleanComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$InputBooleanComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  final bool? $_eq;

  @JsonKey(name: '_gt')
  final bool? $_gt;

  @JsonKey(name: '_gte')
  final bool? $_gte;

  @JsonKey(name: '_in')
  final List<bool>? $_in;

  @JsonKey(name: '_is_null')
  final bool? $_is_null;

  @JsonKey(name: '_lt')
  final bool? $_lt;

  @JsonKey(name: '_lte')
  final bool? $_lte;

  @JsonKey(name: '_neq')
  final bool? $_neq;

  @JsonKey(name: '_nin')
  final List<bool>? $_nin;

  Map<String, dynamic> toJson() => _$InputBooleanComparisonExpToJson(this);
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_is_null = $_is_null;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      l$$_eq,
      l$$_gt,
      l$$_gte,
      l$$_in == null ? null : Object.hashAll(l$$_in.map((v) => v)),
      l$$_is_null,
      l$$_lt,
      l$$_lte,
      l$$_neq,
      l$$_nin == null ? null : Object.hashAll(l$$_nin.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputBooleanComparisonExp) ||
        runtimeType != other.runtimeType) return false;
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (l$$_eq != lOther$$_eq) return false;
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (l$$_gt != lOther$$_gt) return false;
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (l$$_gte != lOther$$_gte) return false;
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) return false;
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) return false;
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }

    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (l$$_is_null != lOther$$_is_null) return false;
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (l$$_lt != lOther$$_lt) return false;
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (l$$_lte != lOther$$_lte) return false;
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (l$$_neq != lOther$$_neq) return false;
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) return false;
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) return false;
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventTypeBoolExp {
  InputeventTypeBoolExp(
      {this.$_and, this.$_not, this.$_or, this.events, this.id, this.name});

  @override
  factory InputeventTypeBoolExp.fromJson(Map<String, dynamic> json) =>
      _$InputeventTypeBoolExpFromJson(json);

  @JsonKey(name: '_and')
  final List<InputeventTypeBoolExp>? $_and;

  @JsonKey(name: '_not')
  final InputeventTypeBoolExp? $_not;

  @JsonKey(name: '_or')
  final List<InputeventTypeBoolExp>? $_or;

  final InputeventsBoolExp? events;

  final InputIntComparisonExp? id;

  final InputStringComparisonExp? name;

  Map<String, dynamic> toJson() => _$InputeventTypeBoolExpToJson(this);
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$events = events;
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      l$$_and == null ? null : Object.hashAll(l$$_and.map((v) => v)),
      l$$_not,
      l$$_or == null ? null : Object.hashAll(l$$_or.map((v) => v)),
      l$events,
      l$id,
      l$name
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventTypeBoolExp) || runtimeType != other.runtimeType)
      return false;
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) return false;
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) return false;
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }

    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (l$$_not != lOther$$_not) return false;
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) return false;
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) return false;
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }

    final l$events = events;
    final lOther$events = other.events;
    if (l$events != lOther$events) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventTypeIncInput {
  InputeventTypeIncInput({this.id});

  @override
  factory InputeventTypeIncInput.fromJson(Map<String, dynamic> json) =>
      _$InputeventTypeIncInputFromJson(json);

  final int? id;

  Map<String, dynamic> toJson() => _$InputeventTypeIncInputToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventTypeIncInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventTypeInsertInput {
  InputeventTypeInsertInput({this.events, this.id, this.name});

  @override
  factory InputeventTypeInsertInput.fromJson(Map<String, dynamic> json) =>
      _$InputeventTypeInsertInputFromJson(json);

  final InputeventsArrRelInsertInput? events;

  final int? id;

  final String? name;

  Map<String, dynamic> toJson() => _$InputeventTypeInsertInputToJson(this);
  int get hashCode {
    final l$events = events;
    final l$id = id;
    final l$name = name;
    return Object.hashAll([l$events, l$id, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventTypeInsertInput) ||
        runtimeType != other.runtimeType) return false;
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != lOther$events) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventTypeObjRelInsertInput {
  InputeventTypeObjRelInsertInput({required this.data, this.on_conflict});

  @override
  factory InputeventTypeObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$InputeventTypeObjRelInsertInputFromJson(json);

  final InputeventTypeInsertInput data;

  final InputeventTypeOnConflict? on_conflict;

  Map<String, dynamic> toJson() =>
      _$InputeventTypeObjRelInsertInputToJson(this);
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll([l$data, l$on_conflict]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventTypeObjRelInsertInput) ||
        runtimeType != other.runtimeType) return false;
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) return false;
    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (l$on_conflict != lOther$on_conflict) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventTypeOnConflict {
  InputeventTypeOnConflict(
      {required this.constraint, required this.update_columns, this.where});

  @override
  factory InputeventTypeOnConflict.fromJson(Map<String, dynamic> json) =>
      _$InputeventTypeOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: EnumeventTypeConstraint.$unknown)
  final EnumeventTypeConstraint constraint;

  @JsonKey(unknownEnumValue: EnumeventTypeUpdateColumn.$unknown)
  final List<EnumeventTypeUpdateColumn> update_columns;

  final InputeventTypeBoolExp? where;

  Map<String, dynamic> toJson() => _$InputeventTypeOnConflictToJson(this);
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      l$where
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventTypeOnConflict) ||
        runtimeType != other.runtimeType) return false;
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) return false;
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) return false;
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) return false;
    }

    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventTypeOrderBy {
  InputeventTypeOrderBy({this.events_aggregate, this.id, this.name});

  @override
  factory InputeventTypeOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventTypeOrderByFromJson(json);

  final InputeventsAggregateOrderBy? events_aggregate;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? name;

  Map<String, dynamic> toJson() => _$InputeventTypeOrderByToJson(this);
  int get hashCode {
    final l$events_aggregate = events_aggregate;
    final l$id = id;
    final l$name = name;
    return Object.hashAll([l$events_aggregate, l$id, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventTypeOrderBy) || runtimeType != other.runtimeType)
      return false;
    final l$events_aggregate = events_aggregate;
    final lOther$events_aggregate = other.events_aggregate;
    if (l$events_aggregate != lOther$events_aggregate) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventTypePkColumnsInput {
  InputeventTypePkColumnsInput({required this.id});

  @override
  factory InputeventTypePkColumnsInput.fromJson(Map<String, dynamic> json) =>
      _$InputeventTypePkColumnsInputFromJson(json);

  final int id;

  Map<String, dynamic> toJson() => _$InputeventTypePkColumnsInputToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventTypePkColumnsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventTypeSetInput {
  InputeventTypeSetInput({this.id, this.name});

  @override
  factory InputeventTypeSetInput.fromJson(Map<String, dynamic> json) =>
      _$InputeventTypeSetInputFromJson(json);

  final int? id;

  final String? name;

  Map<String, dynamic> toJson() => _$InputeventTypeSetInputToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([l$id, l$name]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventTypeSetInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsAggregateOrderBy {
  InputeventsAggregateOrderBy(
      {this.avg,
      this.count,
      this.max,
      this.min,
      this.stddev,
      this.stddev_pop,
      this.stddev_samp,
      this.sum,
      this.var_pop,
      this.var_samp,
      this.variance});

  @override
  factory InputeventsAggregateOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventsAggregateOrderByFromJson(json);

  final InputeventsAvgOrderBy? avg;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? count;

  final InputeventsMaxOrderBy? max;

  final InputeventsMinOrderBy? min;

  final InputeventsStddevOrderBy? stddev;

  final InputeventsStddevPopOrderBy? stddev_pop;

  final InputeventsStddevSampOrderBy? stddev_samp;

  final InputeventsSumOrderBy? sum;

  final InputeventsVarPopOrderBy? var_pop;

  final InputeventsVarSampOrderBy? var_samp;

  final InputeventsVarianceOrderBy? variance;

  Map<String, dynamic> toJson() => _$InputeventsAggregateOrderByToJson(this);
  int get hashCode {
    final l$avg = avg;
    final l$count = count;
    final l$max = max;
    final l$min = min;
    final l$stddev = stddev;
    final l$stddev_pop = stddev_pop;
    final l$stddev_samp = stddev_samp;
    final l$sum = sum;
    final l$var_pop = var_pop;
    final l$var_samp = var_samp;
    final l$variance = variance;
    return Object.hashAll([
      l$avg,
      l$count,
      l$max,
      l$min,
      l$stddev,
      l$stddev_pop,
      l$stddev_samp,
      l$sum,
      l$var_pop,
      l$var_samp,
      l$variance
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsAggregateOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$avg = avg;
    final lOther$avg = other.avg;
    if (l$avg != lOther$avg) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) return false;
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) return false;
    final l$stddev = stddev;
    final lOther$stddev = other.stddev;
    if (l$stddev != lOther$stddev) return false;
    final l$stddev_pop = stddev_pop;
    final lOther$stddev_pop = other.stddev_pop;
    if (l$stddev_pop != lOther$stddev_pop) return false;
    final l$stddev_samp = stddev_samp;
    final lOther$stddev_samp = other.stddev_samp;
    if (l$stddev_samp != lOther$stddev_samp) return false;
    final l$sum = sum;
    final lOther$sum = other.sum;
    if (l$sum != lOther$sum) return false;
    final l$var_pop = var_pop;
    final lOther$var_pop = other.var_pop;
    if (l$var_pop != lOther$var_pop) return false;
    final l$var_samp = var_samp;
    final lOther$var_samp = other.var_samp;
    if (l$var_samp != lOther$var_samp) return false;
    final l$variance = variance;
    final lOther$variance = other.variance;
    if (l$variance != lOther$variance) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsArrRelInsertInput {
  InputeventsArrRelInsertInput({required this.data, this.on_conflict});

  @override
  factory InputeventsArrRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$InputeventsArrRelInsertInputFromJson(json);

  final List<InputeventsInsertInput> data;

  final InputeventsOnConflict? on_conflict;

  Map<String, dynamic> toJson() => _$InputeventsArrRelInsertInputToJson(this);
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll(
        [Object.hashAll(l$data.map((v) => v)), l$on_conflict]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsArrRelInsertInput) ||
        runtimeType != other.runtimeType) return false;
    final l$data = data;
    final lOther$data = other.data;
    if (l$data.length != lOther$data.length) return false;
    for (int i = 0; i < l$data.length; i++) {
      final l$data$entry = l$data[i];
      final lOther$data$entry = lOther$data[i];
      if (l$data$entry != lOther$data$entry) return false;
    }

    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (l$on_conflict != lOther$on_conflict) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsAvgOrderBy {
  InputeventsAvgOrderBy({this.type_id});

  @override
  factory InputeventsAvgOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventsAvgOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? type_id;

  Map<String, dynamic> toJson() => _$InputeventsAvgOrderByToJson(this);
  int get hashCode {
    final l$type_id = type_id;
    return Object.hashAll([l$type_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsAvgOrderBy) || runtimeType != other.runtimeType)
      return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsBoolExp {
  InputeventsBoolExp(
      {this.$_and,
      this.$_not,
      this.$_or,
      this.address,
      this.attendings,
      this.banner_image,
      this.created_at,
      this.description,
      this.end_date,
      this.event_type,
      this.id,
      this.image,
      this.location,
      this.name,
      this.organizer,
      this.participatings,
      this.start_date,
      this.type_id,
      this.user});

  @override
  factory InputeventsBoolExp.fromJson(Map<String, dynamic> json) =>
      _$InputeventsBoolExpFromJson(json);

  @JsonKey(name: '_and')
  final List<InputeventsBoolExp>? $_and;

  @JsonKey(name: '_not')
  final InputeventsBoolExp? $_not;

  @JsonKey(name: '_or')
  final List<InputeventsBoolExp>? $_or;

  final InputStringComparisonExp? address;

  final InputattendingBoolExp? attendings;

  final InputStringComparisonExp? banner_image;

  final InputtimestampComparisonExp? created_at;

  final InputStringComparisonExp? description;

  final InputtimestampComparisonExp? end_date;

  final InputeventTypeBoolExp? event_type;

  final InputuuidComparisonExp? id;

  final InputStringComparisonExp? image;

  final InputjsonComparisonExp? location;

  final InputStringComparisonExp? name;

  final InputuuidComparisonExp? organizer;

  final InputparticipatingBoolExp? participatings;

  final InputtimestampComparisonExp? start_date;

  final InputIntComparisonExp? type_id;

  final InputusersBoolExp? user;

  Map<String, dynamic> toJson() => _$InputeventsBoolExpToJson(this);
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$address = address;
    final l$attendings = attendings;
    final l$banner_image = banner_image;
    final l$created_at = created_at;
    final l$description = description;
    final l$end_date = end_date;
    final l$event_type = event_type;
    final l$id = id;
    final l$image = image;
    final l$location = location;
    final l$name = name;
    final l$organizer = organizer;
    final l$participatings = participatings;
    final l$start_date = start_date;
    final l$type_id = type_id;
    final l$user = user;
    return Object.hashAll([
      l$$_and == null ? null : Object.hashAll(l$$_and.map((v) => v)),
      l$$_not,
      l$$_or == null ? null : Object.hashAll(l$$_or.map((v) => v)),
      l$address,
      l$attendings,
      l$banner_image,
      l$created_at,
      l$description,
      l$end_date,
      l$event_type,
      l$id,
      l$image,
      l$location,
      l$name,
      l$organizer,
      l$participatings,
      l$start_date,
      l$type_id,
      l$user
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsBoolExp) || runtimeType != other.runtimeType)
      return false;
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) return false;
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) return false;
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }

    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (l$$_not != lOther$$_not) return false;
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) return false;
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) return false;
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }

    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) return false;
    final l$attendings = attendings;
    final lOther$attendings = other.attendings;
    if (l$attendings != lOther$attendings) return false;
    final l$banner_image = banner_image;
    final lOther$banner_image = other.banner_image;
    if (l$banner_image != lOther$banner_image) return false;
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$end_date = end_date;
    final lOther$end_date = other.end_date;
    if (l$end_date != lOther$end_date) return false;
    final l$event_type = event_type;
    final lOther$event_type = other.event_type;
    if (l$event_type != lOther$event_type) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$organizer = organizer;
    final lOther$organizer = other.organizer;
    if (l$organizer != lOther$organizer) return false;
    final l$participatings = participatings;
    final lOther$participatings = other.participatings;
    if (l$participatings != lOther$participatings) return false;
    final l$start_date = start_date;
    final lOther$start_date = other.start_date;
    if (l$start_date != lOther$start_date) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsIncInput {
  InputeventsIncInput({this.type_id});

  @override
  factory InputeventsIncInput.fromJson(Map<String, dynamic> json) =>
      _$InputeventsIncInputFromJson(json);

  final int? type_id;

  Map<String, dynamic> toJson() => _$InputeventsIncInputToJson(this);
  int get hashCode {
    final l$type_id = type_id;
    return Object.hashAll([l$type_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsIncInput) || runtimeType != other.runtimeType)
      return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsInsertInput {
  InputeventsInsertInput(
      {this.address,
      this.attendings,
      this.banner_image,
      this.created_at,
      this.description,
      this.end_date,
      this.event_type,
      this.id,
      this.image,
      this.location,
      this.name,
      this.organizer,
      this.participatings,
      this.start_date,
      this.type_id,
      this.user});

  @override
  factory InputeventsInsertInput.fromJson(Map<String, dynamic> json) =>
      _$InputeventsInsertInputFromJson(json);

  final String? address;

  final InputattendingArrRelInsertInput? attendings;

  final String? banner_image;

  final DateTime? created_at;

  final String? description;

  final DateTime? end_date;

  final InputeventTypeObjRelInsertInput? event_type;

  final String? id;

  final String? image;

  final Map<String, dynamic>? location;

  final String? name;

  final String? organizer;

  final InputparticipatingArrRelInsertInput? participatings;

  final DateTime? start_date;

  final int? type_id;

  final InputusersObjRelInsertInput? user;

  Map<String, dynamic> toJson() => _$InputeventsInsertInputToJson(this);
  int get hashCode {
    final l$address = address;
    final l$attendings = attendings;
    final l$banner_image = banner_image;
    final l$created_at = created_at;
    final l$description = description;
    final l$end_date = end_date;
    final l$event_type = event_type;
    final l$id = id;
    final l$image = image;
    final l$location = location;
    final l$name = name;
    final l$organizer = organizer;
    final l$participatings = participatings;
    final l$start_date = start_date;
    final l$type_id = type_id;
    final l$user = user;
    return Object.hashAll([
      l$address,
      l$attendings,
      l$banner_image,
      l$created_at,
      l$description,
      l$end_date,
      l$event_type,
      l$id,
      l$image,
      l$location,
      l$name,
      l$organizer,
      l$participatings,
      l$start_date,
      l$type_id,
      l$user
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsInsertInput) || runtimeType != other.runtimeType)
      return false;
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) return false;
    final l$attendings = attendings;
    final lOther$attendings = other.attendings;
    if (l$attendings != lOther$attendings) return false;
    final l$banner_image = banner_image;
    final lOther$banner_image = other.banner_image;
    if (l$banner_image != lOther$banner_image) return false;
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$end_date = end_date;
    final lOther$end_date = other.end_date;
    if (l$end_date != lOther$end_date) return false;
    final l$event_type = event_type;
    final lOther$event_type = other.event_type;
    if (l$event_type != lOther$event_type) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$organizer = organizer;
    final lOther$organizer = other.organizer;
    if (l$organizer != lOther$organizer) return false;
    final l$participatings = participatings;
    final lOther$participatings = other.participatings;
    if (l$participatings != lOther$participatings) return false;
    final l$start_date = start_date;
    final lOther$start_date = other.start_date;
    if (l$start_date != lOther$start_date) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsMaxOrderBy {
  InputeventsMaxOrderBy(
      {this.address,
      this.banner_image,
      this.created_at,
      this.description,
      this.end_date,
      this.id,
      this.image,
      this.name,
      this.organizer,
      this.start_date,
      this.type_id});

  @override
  factory InputeventsMaxOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventsMaxOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? address;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? banner_image;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? created_at;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? description;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? end_date;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? image;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? name;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? organizer;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? start_date;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? type_id;

  Map<String, dynamic> toJson() => _$InputeventsMaxOrderByToJson(this);
  int get hashCode {
    final l$address = address;
    final l$banner_image = banner_image;
    final l$created_at = created_at;
    final l$description = description;
    final l$end_date = end_date;
    final l$id = id;
    final l$image = image;
    final l$name = name;
    final l$organizer = organizer;
    final l$start_date = start_date;
    final l$type_id = type_id;
    return Object.hashAll([
      l$address,
      l$banner_image,
      l$created_at,
      l$description,
      l$end_date,
      l$id,
      l$image,
      l$name,
      l$organizer,
      l$start_date,
      l$type_id
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsMaxOrderBy) || runtimeType != other.runtimeType)
      return false;
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) return false;
    final l$banner_image = banner_image;
    final lOther$banner_image = other.banner_image;
    if (l$banner_image != lOther$banner_image) return false;
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$end_date = end_date;
    final lOther$end_date = other.end_date;
    if (l$end_date != lOther$end_date) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$organizer = organizer;
    final lOther$organizer = other.organizer;
    if (l$organizer != lOther$organizer) return false;
    final l$start_date = start_date;
    final lOther$start_date = other.start_date;
    if (l$start_date != lOther$start_date) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsMinOrderBy {
  InputeventsMinOrderBy(
      {this.address,
      this.banner_image,
      this.created_at,
      this.description,
      this.end_date,
      this.id,
      this.image,
      this.name,
      this.organizer,
      this.start_date,
      this.type_id});

  @override
  factory InputeventsMinOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventsMinOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? address;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? banner_image;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? created_at;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? description;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? end_date;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? image;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? name;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? organizer;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? start_date;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? type_id;

  Map<String, dynamic> toJson() => _$InputeventsMinOrderByToJson(this);
  int get hashCode {
    final l$address = address;
    final l$banner_image = banner_image;
    final l$created_at = created_at;
    final l$description = description;
    final l$end_date = end_date;
    final l$id = id;
    final l$image = image;
    final l$name = name;
    final l$organizer = organizer;
    final l$start_date = start_date;
    final l$type_id = type_id;
    return Object.hashAll([
      l$address,
      l$banner_image,
      l$created_at,
      l$description,
      l$end_date,
      l$id,
      l$image,
      l$name,
      l$organizer,
      l$start_date,
      l$type_id
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsMinOrderBy) || runtimeType != other.runtimeType)
      return false;
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) return false;
    final l$banner_image = banner_image;
    final lOther$banner_image = other.banner_image;
    if (l$banner_image != lOther$banner_image) return false;
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$end_date = end_date;
    final lOther$end_date = other.end_date;
    if (l$end_date != lOther$end_date) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$organizer = organizer;
    final lOther$organizer = other.organizer;
    if (l$organizer != lOther$organizer) return false;
    final l$start_date = start_date;
    final lOther$start_date = other.start_date;
    if (l$start_date != lOther$start_date) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsObjRelInsertInput {
  InputeventsObjRelInsertInput({required this.data, this.on_conflict});

  @override
  factory InputeventsObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$InputeventsObjRelInsertInputFromJson(json);

  final InputeventsInsertInput data;

  final InputeventsOnConflict? on_conflict;

  Map<String, dynamic> toJson() => _$InputeventsObjRelInsertInputToJson(this);
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll([l$data, l$on_conflict]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsObjRelInsertInput) ||
        runtimeType != other.runtimeType) return false;
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) return false;
    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (l$on_conflict != lOther$on_conflict) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsOnConflict {
  InputeventsOnConflict(
      {required this.constraint, required this.update_columns, this.where});

  @override
  factory InputeventsOnConflict.fromJson(Map<String, dynamic> json) =>
      _$InputeventsOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: EnumeventsConstraint.$unknown)
  final EnumeventsConstraint constraint;

  @JsonKey(unknownEnumValue: EnumeventsUpdateColumn.$unknown)
  final List<EnumeventsUpdateColumn> update_columns;

  final InputeventsBoolExp? where;

  Map<String, dynamic> toJson() => _$InputeventsOnConflictToJson(this);
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      l$where
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsOnConflict) || runtimeType != other.runtimeType)
      return false;
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) return false;
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) return false;
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) return false;
    }

    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsOrderBy {
  InputeventsOrderBy(
      {this.address,
      this.attendings_aggregate,
      this.banner_image,
      this.created_at,
      this.description,
      this.end_date,
      this.event_type,
      this.id,
      this.image,
      this.location,
      this.name,
      this.organizer,
      this.participatings_aggregate,
      this.start_date,
      this.type_id,
      this.user});

  @override
  factory InputeventsOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventsOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? address;

  final InputattendingAggregateOrderBy? attendings_aggregate;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? banner_image;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? created_at;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? description;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? end_date;

  final InputeventTypeOrderBy? event_type;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? image;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? location;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? name;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? organizer;

  final InputparticipatingAggregateOrderBy? participatings_aggregate;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? start_date;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? type_id;

  final InputusersOrderBy? user;

  Map<String, dynamic> toJson() => _$InputeventsOrderByToJson(this);
  int get hashCode {
    final l$address = address;
    final l$attendings_aggregate = attendings_aggregate;
    final l$banner_image = banner_image;
    final l$created_at = created_at;
    final l$description = description;
    final l$end_date = end_date;
    final l$event_type = event_type;
    final l$id = id;
    final l$image = image;
    final l$location = location;
    final l$name = name;
    final l$organizer = organizer;
    final l$participatings_aggregate = participatings_aggregate;
    final l$start_date = start_date;
    final l$type_id = type_id;
    final l$user = user;
    return Object.hashAll([
      l$address,
      l$attendings_aggregate,
      l$banner_image,
      l$created_at,
      l$description,
      l$end_date,
      l$event_type,
      l$id,
      l$image,
      l$location,
      l$name,
      l$organizer,
      l$participatings_aggregate,
      l$start_date,
      l$type_id,
      l$user
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsOrderBy) || runtimeType != other.runtimeType)
      return false;
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) return false;
    final l$attendings_aggregate = attendings_aggregate;
    final lOther$attendings_aggregate = other.attendings_aggregate;
    if (l$attendings_aggregate != lOther$attendings_aggregate) return false;
    final l$banner_image = banner_image;
    final lOther$banner_image = other.banner_image;
    if (l$banner_image != lOther$banner_image) return false;
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$end_date = end_date;
    final lOther$end_date = other.end_date;
    if (l$end_date != lOther$end_date) return false;
    final l$event_type = event_type;
    final lOther$event_type = other.event_type;
    if (l$event_type != lOther$event_type) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$organizer = organizer;
    final lOther$organizer = other.organizer;
    if (l$organizer != lOther$organizer) return false;
    final l$participatings_aggregate = participatings_aggregate;
    final lOther$participatings_aggregate = other.participatings_aggregate;
    if (l$participatings_aggregate != lOther$participatings_aggregate)
      return false;
    final l$start_date = start_date;
    final lOther$start_date = other.start_date;
    if (l$start_date != lOther$start_date) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsPkColumnsInput {
  InputeventsPkColumnsInput({required this.id});

  @override
  factory InputeventsPkColumnsInput.fromJson(Map<String, dynamic> json) =>
      _$InputeventsPkColumnsInputFromJson(json);

  final String id;

  Map<String, dynamic> toJson() => _$InputeventsPkColumnsInputToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsPkColumnsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsSetInput {
  InputeventsSetInput(
      {this.address,
      this.banner_image,
      this.created_at,
      this.description,
      this.end_date,
      this.id,
      this.image,
      this.location,
      this.name,
      this.organizer,
      this.start_date,
      this.type_id});

  @override
  factory InputeventsSetInput.fromJson(Map<String, dynamic> json) =>
      _$InputeventsSetInputFromJson(json);

  final String? address;

  final String? banner_image;

  final DateTime? created_at;

  final String? description;

  final DateTime? end_date;

  final String? id;

  final String? image;

  final Map<String, dynamic>? location;

  final String? name;

  final String? organizer;

  final DateTime? start_date;

  final int? type_id;

  Map<String, dynamic> toJson() => _$InputeventsSetInputToJson(this);
  int get hashCode {
    final l$address = address;
    final l$banner_image = banner_image;
    final l$created_at = created_at;
    final l$description = description;
    final l$end_date = end_date;
    final l$id = id;
    final l$image = image;
    final l$location = location;
    final l$name = name;
    final l$organizer = organizer;
    final l$start_date = start_date;
    final l$type_id = type_id;
    return Object.hashAll([
      l$address,
      l$banner_image,
      l$created_at,
      l$description,
      l$end_date,
      l$id,
      l$image,
      l$location,
      l$name,
      l$organizer,
      l$start_date,
      l$type_id
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsSetInput) || runtimeType != other.runtimeType)
      return false;
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) return false;
    final l$banner_image = banner_image;
    final lOther$banner_image = other.banner_image;
    if (l$banner_image != lOther$banner_image) return false;
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$end_date = end_date;
    final lOther$end_date = other.end_date;
    if (l$end_date != lOther$end_date) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$organizer = organizer;
    final lOther$organizer = other.organizer;
    if (l$organizer != lOther$organizer) return false;
    final l$start_date = start_date;
    final lOther$start_date = other.start_date;
    if (l$start_date != lOther$start_date) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsStddevOrderBy {
  InputeventsStddevOrderBy({this.type_id});

  @override
  factory InputeventsStddevOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventsStddevOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? type_id;

  Map<String, dynamic> toJson() => _$InputeventsStddevOrderByToJson(this);
  int get hashCode {
    final l$type_id = type_id;
    return Object.hashAll([l$type_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsStddevOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsStddevPopOrderBy {
  InputeventsStddevPopOrderBy({this.type_id});

  @override
  factory InputeventsStddevPopOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventsStddevPopOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? type_id;

  Map<String, dynamic> toJson() => _$InputeventsStddevPopOrderByToJson(this);
  int get hashCode {
    final l$type_id = type_id;
    return Object.hashAll([l$type_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsStddevPopOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsStddevSampOrderBy {
  InputeventsStddevSampOrderBy({this.type_id});

  @override
  factory InputeventsStddevSampOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventsStddevSampOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? type_id;

  Map<String, dynamic> toJson() => _$InputeventsStddevSampOrderByToJson(this);
  int get hashCode {
    final l$type_id = type_id;
    return Object.hashAll([l$type_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsStddevSampOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsSumOrderBy {
  InputeventsSumOrderBy({this.type_id});

  @override
  factory InputeventsSumOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventsSumOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? type_id;

  Map<String, dynamic> toJson() => _$InputeventsSumOrderByToJson(this);
  int get hashCode {
    final l$type_id = type_id;
    return Object.hashAll([l$type_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsSumOrderBy) || runtimeType != other.runtimeType)
      return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsVarPopOrderBy {
  InputeventsVarPopOrderBy({this.type_id});

  @override
  factory InputeventsVarPopOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventsVarPopOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? type_id;

  Map<String, dynamic> toJson() => _$InputeventsVarPopOrderByToJson(this);
  int get hashCode {
    final l$type_id = type_id;
    return Object.hashAll([l$type_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsVarPopOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsVarSampOrderBy {
  InputeventsVarSampOrderBy({this.type_id});

  @override
  factory InputeventsVarSampOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventsVarSampOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? type_id;

  Map<String, dynamic> toJson() => _$InputeventsVarSampOrderByToJson(this);
  int get hashCode {
    final l$type_id = type_id;
    return Object.hashAll([l$type_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsVarSampOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputeventsVarianceOrderBy {
  InputeventsVarianceOrderBy({this.type_id});

  @override
  factory InputeventsVarianceOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputeventsVarianceOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? type_id;

  Map<String, dynamic> toJson() => _$InputeventsVarianceOrderByToJson(this);
  int get hashCode {
    final l$type_id = type_id;
    return Object.hashAll([l$type_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputeventsVarianceOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$type_id = type_id;
    final lOther$type_id = other.type_id;
    if (l$type_id != lOther$type_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputIntComparisonExp {
  InputIntComparisonExp(
      {this.$_eq,
      this.$_gt,
      this.$_gte,
      this.$_in,
      this.$_is_null,
      this.$_lt,
      this.$_lte,
      this.$_neq,
      this.$_nin});

  @override
  factory InputIntComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$InputIntComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  final int? $_eq;

  @JsonKey(name: '_gt')
  final int? $_gt;

  @JsonKey(name: '_gte')
  final int? $_gte;

  @JsonKey(name: '_in')
  final List<int>? $_in;

  @JsonKey(name: '_is_null')
  final bool? $_is_null;

  @JsonKey(name: '_lt')
  final int? $_lt;

  @JsonKey(name: '_lte')
  final int? $_lte;

  @JsonKey(name: '_neq')
  final int? $_neq;

  @JsonKey(name: '_nin')
  final List<int>? $_nin;

  Map<String, dynamic> toJson() => _$InputIntComparisonExpToJson(this);
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_is_null = $_is_null;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      l$$_eq,
      l$$_gt,
      l$$_gte,
      l$$_in == null ? null : Object.hashAll(l$$_in.map((v) => v)),
      l$$_is_null,
      l$$_lt,
      l$$_lte,
      l$$_neq,
      l$$_nin == null ? null : Object.hashAll(l$$_nin.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputIntComparisonExp) || runtimeType != other.runtimeType)
      return false;
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (l$$_eq != lOther$$_eq) return false;
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (l$$_gt != lOther$$_gt) return false;
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (l$$_gte != lOther$$_gte) return false;
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) return false;
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) return false;
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }

    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (l$$_is_null != lOther$$_is_null) return false;
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (l$$_lt != lOther$$_lt) return false;
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (l$$_lte != lOther$$_lte) return false;
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (l$$_neq != lOther$$_neq) return false;
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) return false;
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) return false;
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputjsonComparisonExp {
  InputjsonComparisonExp(
      {this.$_eq,
      this.$_gt,
      this.$_gte,
      this.$_in,
      this.$_is_null,
      this.$_lt,
      this.$_lte,
      this.$_neq,
      this.$_nin});

  @override
  factory InputjsonComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$InputjsonComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  final Map<String, dynamic>? $_eq;

  @JsonKey(name: '_gt')
  final Map<String, dynamic>? $_gt;

  @JsonKey(name: '_gte')
  final Map<String, dynamic>? $_gte;

  @JsonKey(name: '_in')
  final List<Map<String, dynamic>>? $_in;

  @JsonKey(name: '_is_null')
  final bool? $_is_null;

  @JsonKey(name: '_lt')
  final Map<String, dynamic>? $_lt;

  @JsonKey(name: '_lte')
  final Map<String, dynamic>? $_lte;

  @JsonKey(name: '_neq')
  final Map<String, dynamic>? $_neq;

  @JsonKey(name: '_nin')
  final List<Map<String, dynamic>>? $_nin;

  Map<String, dynamic> toJson() => _$InputjsonComparisonExpToJson(this);
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_is_null = $_is_null;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      l$$_eq,
      l$$_gt,
      l$$_gte,
      l$$_in == null ? null : Object.hashAll(l$$_in.map((v) => v)),
      l$$_is_null,
      l$$_lt,
      l$$_lte,
      l$$_neq,
      l$$_nin == null ? null : Object.hashAll(l$$_nin.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputjsonComparisonExp) || runtimeType != other.runtimeType)
      return false;
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (l$$_eq != lOther$$_eq) return false;
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (l$$_gt != lOther$$_gt) return false;
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (l$$_gte != lOther$$_gte) return false;
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) return false;
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) return false;
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }

    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (l$$_is_null != lOther$$_is_null) return false;
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (l$$_lt != lOther$$_lt) return false;
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (l$$_lte != lOther$$_lte) return false;
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (l$$_neq != lOther$$_neq) return false;
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) return false;
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) return false;
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingAggregateOrderBy {
  InputparticipatingAggregateOrderBy(
      {this.avg,
      this.count,
      this.max,
      this.min,
      this.stddev,
      this.stddev_pop,
      this.stddev_samp,
      this.sum,
      this.var_pop,
      this.var_samp,
      this.variance});

  @override
  factory InputparticipatingAggregateOrderBy.fromJson(
          Map<String, dynamic> json) =>
      _$InputparticipatingAggregateOrderByFromJson(json);

  final InputparticipatingAvgOrderBy? avg;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? count;

  final InputparticipatingMaxOrderBy? max;

  final InputparticipatingMinOrderBy? min;

  final InputparticipatingStddevOrderBy? stddev;

  final InputparticipatingStddevPopOrderBy? stddev_pop;

  final InputparticipatingStddevSampOrderBy? stddev_samp;

  final InputparticipatingSumOrderBy? sum;

  final InputparticipatingVarPopOrderBy? var_pop;

  final InputparticipatingVarSampOrderBy? var_samp;

  final InputparticipatingVarianceOrderBy? variance;

  Map<String, dynamic> toJson() =>
      _$InputparticipatingAggregateOrderByToJson(this);
  int get hashCode {
    final l$avg = avg;
    final l$count = count;
    final l$max = max;
    final l$min = min;
    final l$stddev = stddev;
    final l$stddev_pop = stddev_pop;
    final l$stddev_samp = stddev_samp;
    final l$sum = sum;
    final l$var_pop = var_pop;
    final l$var_samp = var_samp;
    final l$variance = variance;
    return Object.hashAll([
      l$avg,
      l$count,
      l$max,
      l$min,
      l$stddev,
      l$stddev_pop,
      l$stddev_samp,
      l$sum,
      l$var_pop,
      l$var_samp,
      l$variance
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingAggregateOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$avg = avg;
    final lOther$avg = other.avg;
    if (l$avg != lOther$avg) return false;
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) return false;
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) return false;
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) return false;
    final l$stddev = stddev;
    final lOther$stddev = other.stddev;
    if (l$stddev != lOther$stddev) return false;
    final l$stddev_pop = stddev_pop;
    final lOther$stddev_pop = other.stddev_pop;
    if (l$stddev_pop != lOther$stddev_pop) return false;
    final l$stddev_samp = stddev_samp;
    final lOther$stddev_samp = other.stddev_samp;
    if (l$stddev_samp != lOther$stddev_samp) return false;
    final l$sum = sum;
    final lOther$sum = other.sum;
    if (l$sum != lOther$sum) return false;
    final l$var_pop = var_pop;
    final lOther$var_pop = other.var_pop;
    if (l$var_pop != lOther$var_pop) return false;
    final l$var_samp = var_samp;
    final lOther$var_samp = other.var_samp;
    if (l$var_samp != lOther$var_samp) return false;
    final l$variance = variance;
    final lOther$variance = other.variance;
    if (l$variance != lOther$variance) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingArrRelInsertInput {
  InputparticipatingArrRelInsertInput({required this.data, this.on_conflict});

  @override
  factory InputparticipatingArrRelInsertInput.fromJson(
          Map<String, dynamic> json) =>
      _$InputparticipatingArrRelInsertInputFromJson(json);

  final List<InputparticipatingInsertInput> data;

  final InputparticipatingOnConflict? on_conflict;

  Map<String, dynamic> toJson() =>
      _$InputparticipatingArrRelInsertInputToJson(this);
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll(
        [Object.hashAll(l$data.map((v) => v)), l$on_conflict]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingArrRelInsertInput) ||
        runtimeType != other.runtimeType) return false;
    final l$data = data;
    final lOther$data = other.data;
    if (l$data.length != lOther$data.length) return false;
    for (int i = 0; i < l$data.length; i++) {
      final l$data$entry = l$data[i];
      final lOther$data$entry = lOther$data[i];
      if (l$data$entry != lOther$data$entry) return false;
    }

    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (l$on_conflict != lOther$on_conflict) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingAvgOrderBy {
  InputparticipatingAvgOrderBy({this.id});

  @override
  factory InputparticipatingAvgOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputparticipatingAvgOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() => _$InputparticipatingAvgOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingAvgOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingBoolExp {
  InputparticipatingBoolExp(
      {this.$_and,
      this.$_not,
      this.$_or,
      this.approved,
      this.event,
      this.event_id,
      this.id,
      this.user,
      this.user_id});

  @override
  factory InputparticipatingBoolExp.fromJson(Map<String, dynamic> json) =>
      _$InputparticipatingBoolExpFromJson(json);

  @JsonKey(name: '_and')
  final List<InputparticipatingBoolExp>? $_and;

  @JsonKey(name: '_not')
  final InputparticipatingBoolExp? $_not;

  @JsonKey(name: '_or')
  final List<InputparticipatingBoolExp>? $_or;

  final InputBooleanComparisonExp? approved;

  final InputeventsBoolExp? event;

  final InputuuidComparisonExp? event_id;

  final InputIntComparisonExp? id;

  final InputusersBoolExp? user;

  final InputuuidComparisonExp? user_id;

  Map<String, dynamic> toJson() => _$InputparticipatingBoolExpToJson(this);
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$approved = approved;
    final l$event = event;
    final l$event_id = event_id;
    final l$id = id;
    final l$user = user;
    final l$user_id = user_id;
    return Object.hashAll([
      l$$_and == null ? null : Object.hashAll(l$$_and.map((v) => v)),
      l$$_not,
      l$$_or == null ? null : Object.hashAll(l$$_or.map((v) => v)),
      l$approved,
      l$event,
      l$event_id,
      l$id,
      l$user,
      l$user_id
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingBoolExp) ||
        runtimeType != other.runtimeType) return false;
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) return false;
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) return false;
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }

    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (l$$_not != lOther$$_not) return false;
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) return false;
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) return false;
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }

    final l$approved = approved;
    final lOther$approved = other.approved;
    if (l$approved != lOther$approved) return false;
    final l$event = event;
    final lOther$event = other.event;
    if (l$event != lOther$event) return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingIncInput {
  InputparticipatingIncInput({this.id});

  @override
  factory InputparticipatingIncInput.fromJson(Map<String, dynamic> json) =>
      _$InputparticipatingIncInputFromJson(json);

  final int? id;

  Map<String, dynamic> toJson() => _$InputparticipatingIncInputToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingIncInput) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingInsertInput {
  InputparticipatingInsertInput(
      {this.approved,
      this.event,
      this.event_id,
      this.id,
      this.user,
      this.user_id});

  @override
  factory InputparticipatingInsertInput.fromJson(Map<String, dynamic> json) =>
      _$InputparticipatingInsertInputFromJson(json);

  final bool? approved;

  final InputeventsObjRelInsertInput? event;

  final String? event_id;

  final int? id;

  final InputusersObjRelInsertInput? user;

  final String? user_id;

  Map<String, dynamic> toJson() => _$InputparticipatingInsertInputToJson(this);
  int get hashCode {
    final l$approved = approved;
    final l$event = event;
    final l$event_id = event_id;
    final l$id = id;
    final l$user = user;
    final l$user_id = user_id;
    return Object.hashAll(
        [l$approved, l$event, l$event_id, l$id, l$user, l$user_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingInsertInput) ||
        runtimeType != other.runtimeType) return false;
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (l$approved != lOther$approved) return false;
    final l$event = event;
    final lOther$event = other.event;
    if (l$event != lOther$event) return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingMaxOrderBy {
  InputparticipatingMaxOrderBy({this.event_id, this.id, this.user_id});

  @override
  factory InputparticipatingMaxOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputparticipatingMaxOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? event_id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? user_id;

  Map<String, dynamic> toJson() => _$InputparticipatingMaxOrderByToJson(this);
  int get hashCode {
    final l$event_id = event_id;
    final l$id = id;
    final l$user_id = user_id;
    return Object.hashAll([l$event_id, l$id, l$user_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingMaxOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingMinOrderBy {
  InputparticipatingMinOrderBy({this.event_id, this.id, this.user_id});

  @override
  factory InputparticipatingMinOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputparticipatingMinOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? event_id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? user_id;

  Map<String, dynamic> toJson() => _$InputparticipatingMinOrderByToJson(this);
  int get hashCode {
    final l$event_id = event_id;
    final l$id = id;
    final l$user_id = user_id;
    return Object.hashAll([l$event_id, l$id, l$user_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingMinOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingOnConflict {
  InputparticipatingOnConflict(
      {required this.constraint, required this.update_columns, this.where});

  @override
  factory InputparticipatingOnConflict.fromJson(Map<String, dynamic> json) =>
      _$InputparticipatingOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: EnumparticipatingConstraint.$unknown)
  final EnumparticipatingConstraint constraint;

  @JsonKey(unknownEnumValue: EnumparticipatingUpdateColumn.$unknown)
  final List<EnumparticipatingUpdateColumn> update_columns;

  final InputparticipatingBoolExp? where;

  Map<String, dynamic> toJson() => _$InputparticipatingOnConflictToJson(this);
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      l$where
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingOnConflict) ||
        runtimeType != other.runtimeType) return false;
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) return false;
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) return false;
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) return false;
    }

    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingOrderBy {
  InputparticipatingOrderBy(
      {this.approved,
      this.event,
      this.event_id,
      this.id,
      this.user,
      this.user_id});

  @override
  factory InputparticipatingOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputparticipatingOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? approved;

  final InputeventsOrderBy? event;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? event_id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  final InputusersOrderBy? user;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? user_id;

  Map<String, dynamic> toJson() => _$InputparticipatingOrderByToJson(this);
  int get hashCode {
    final l$approved = approved;
    final l$event = event;
    final l$event_id = event_id;
    final l$id = id;
    final l$user = user;
    final l$user_id = user_id;
    return Object.hashAll(
        [l$approved, l$event, l$event_id, l$id, l$user, l$user_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (l$approved != lOther$approved) return false;
    final l$event = event;
    final lOther$event = other.event;
    if (l$event != lOther$event) return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingPkColumnsInput {
  InputparticipatingPkColumnsInput({required this.id});

  @override
  factory InputparticipatingPkColumnsInput.fromJson(
          Map<String, dynamic> json) =>
      _$InputparticipatingPkColumnsInputFromJson(json);

  final int id;

  Map<String, dynamic> toJson() =>
      _$InputparticipatingPkColumnsInputToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingPkColumnsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingSetInput {
  InputparticipatingSetInput(
      {this.approved, this.event_id, this.id, this.user_id});

  @override
  factory InputparticipatingSetInput.fromJson(Map<String, dynamic> json) =>
      _$InputparticipatingSetInputFromJson(json);

  final bool? approved;

  final String? event_id;

  final int? id;

  final String? user_id;

  Map<String, dynamic> toJson() => _$InputparticipatingSetInputToJson(this);
  int get hashCode {
    final l$approved = approved;
    final l$event_id = event_id;
    final l$id = id;
    final l$user_id = user_id;
    return Object.hashAll([l$approved, l$event_id, l$id, l$user_id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingSetInput) ||
        runtimeType != other.runtimeType) return false;
    final l$approved = approved;
    final lOther$approved = other.approved;
    if (l$approved != lOther$approved) return false;
    final l$event_id = event_id;
    final lOther$event_id = other.event_id;
    if (l$event_id != lOther$event_id) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingStddevOrderBy {
  InputparticipatingStddevOrderBy({this.id});

  @override
  factory InputparticipatingStddevOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputparticipatingStddevOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() =>
      _$InputparticipatingStddevOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingStddevOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingStddevPopOrderBy {
  InputparticipatingStddevPopOrderBy({this.id});

  @override
  factory InputparticipatingStddevPopOrderBy.fromJson(
          Map<String, dynamic> json) =>
      _$InputparticipatingStddevPopOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() =>
      _$InputparticipatingStddevPopOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingStddevPopOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingStddevSampOrderBy {
  InputparticipatingStddevSampOrderBy({this.id});

  @override
  factory InputparticipatingStddevSampOrderBy.fromJson(
          Map<String, dynamic> json) =>
      _$InputparticipatingStddevSampOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() =>
      _$InputparticipatingStddevSampOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingStddevSampOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingSumOrderBy {
  InputparticipatingSumOrderBy({this.id});

  @override
  factory InputparticipatingSumOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputparticipatingSumOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() => _$InputparticipatingSumOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingSumOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingVarPopOrderBy {
  InputparticipatingVarPopOrderBy({this.id});

  @override
  factory InputparticipatingVarPopOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputparticipatingVarPopOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() =>
      _$InputparticipatingVarPopOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingVarPopOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingVarSampOrderBy {
  InputparticipatingVarSampOrderBy({this.id});

  @override
  factory InputparticipatingVarSampOrderBy.fromJson(
          Map<String, dynamic> json) =>
      _$InputparticipatingVarSampOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() =>
      _$InputparticipatingVarSampOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingVarSampOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputparticipatingVarianceOrderBy {
  InputparticipatingVarianceOrderBy({this.id});

  @override
  factory InputparticipatingVarianceOrderBy.fromJson(
          Map<String, dynamic> json) =>
      _$InputparticipatingVarianceOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() =>
      _$InputparticipatingVarianceOrderByToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputparticipatingVarianceOrderBy) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputStringComparisonExp {
  InputStringComparisonExp(
      {this.$_eq,
      this.$_gt,
      this.$_gte,
      this.$_ilike,
      this.$_in,
      this.$_iregex,
      this.$_is_null,
      this.$_like,
      this.$_lt,
      this.$_lte,
      this.$_neq,
      this.$_nilike,
      this.$_nin,
      this.$_niregex,
      this.$_nlike,
      this.$_nregex,
      this.$_nsimilar,
      this.$_regex,
      this.$_similar});

  @override
  factory InputStringComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$InputStringComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  final String? $_eq;

  @JsonKey(name: '_gt')
  final String? $_gt;

  @JsonKey(name: '_gte')
  final String? $_gte;

  @JsonKey(name: '_ilike')
  final String? $_ilike;

  @JsonKey(name: '_in')
  final List<String>? $_in;

  @JsonKey(name: '_iregex')
  final String? $_iregex;

  @JsonKey(name: '_is_null')
  final bool? $_is_null;

  @JsonKey(name: '_like')
  final String? $_like;

  @JsonKey(name: '_lt')
  final String? $_lt;

  @JsonKey(name: '_lte')
  final String? $_lte;

  @JsonKey(name: '_neq')
  final String? $_neq;

  @JsonKey(name: '_nilike')
  final String? $_nilike;

  @JsonKey(name: '_nin')
  final List<String>? $_nin;

  @JsonKey(name: '_niregex')
  final String? $_niregex;

  @JsonKey(name: '_nlike')
  final String? $_nlike;

  @JsonKey(name: '_nregex')
  final String? $_nregex;

  @JsonKey(name: '_nsimilar')
  final String? $_nsimilar;

  @JsonKey(name: '_regex')
  final String? $_regex;

  @JsonKey(name: '_similar')
  final String? $_similar;

  Map<String, dynamic> toJson() => _$InputStringComparisonExpToJson(this);
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_ilike = $_ilike;
    final l$$_in = $_in;
    final l$$_iregex = $_iregex;
    final l$$_is_null = $_is_null;
    final l$$_like = $_like;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nilike = $_nilike;
    final l$$_nin = $_nin;
    final l$$_niregex = $_niregex;
    final l$$_nlike = $_nlike;
    final l$$_nregex = $_nregex;
    final l$$_nsimilar = $_nsimilar;
    final l$$_regex = $_regex;
    final l$$_similar = $_similar;
    return Object.hashAll([
      l$$_eq,
      l$$_gt,
      l$$_gte,
      l$$_ilike,
      l$$_in == null ? null : Object.hashAll(l$$_in.map((v) => v)),
      l$$_iregex,
      l$$_is_null,
      l$$_like,
      l$$_lt,
      l$$_lte,
      l$$_neq,
      l$$_nilike,
      l$$_nin == null ? null : Object.hashAll(l$$_nin.map((v) => v)),
      l$$_niregex,
      l$$_nlike,
      l$$_nregex,
      l$$_nsimilar,
      l$$_regex,
      l$$_similar
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputStringComparisonExp) ||
        runtimeType != other.runtimeType) return false;
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (l$$_eq != lOther$$_eq) return false;
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (l$$_gt != lOther$$_gt) return false;
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (l$$_gte != lOther$$_gte) return false;
    final l$$_ilike = $_ilike;
    final lOther$$_ilike = other.$_ilike;
    if (l$$_ilike != lOther$$_ilike) return false;
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) return false;
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) return false;
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }

    final l$$_iregex = $_iregex;
    final lOther$$_iregex = other.$_iregex;
    if (l$$_iregex != lOther$$_iregex) return false;
    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (l$$_is_null != lOther$$_is_null) return false;
    final l$$_like = $_like;
    final lOther$$_like = other.$_like;
    if (l$$_like != lOther$$_like) return false;
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (l$$_lt != lOther$$_lt) return false;
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (l$$_lte != lOther$$_lte) return false;
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (l$$_neq != lOther$$_neq) return false;
    final l$$_nilike = $_nilike;
    final lOther$$_nilike = other.$_nilike;
    if (l$$_nilike != lOther$$_nilike) return false;
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) return false;
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) return false;
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }

    final l$$_niregex = $_niregex;
    final lOther$$_niregex = other.$_niregex;
    if (l$$_niregex != lOther$$_niregex) return false;
    final l$$_nlike = $_nlike;
    final lOther$$_nlike = other.$_nlike;
    if (l$$_nlike != lOther$$_nlike) return false;
    final l$$_nregex = $_nregex;
    final lOther$$_nregex = other.$_nregex;
    if (l$$_nregex != lOther$$_nregex) return false;
    final l$$_nsimilar = $_nsimilar;
    final lOther$$_nsimilar = other.$_nsimilar;
    if (l$$_nsimilar != lOther$$_nsimilar) return false;
    final l$$_regex = $_regex;
    final lOther$$_regex = other.$_regex;
    if (l$$_regex != lOther$$_regex) return false;
    final l$$_similar = $_similar;
    final lOther$$_similar = other.$_similar;
    if (l$$_similar != lOther$$_similar) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputtimestampComparisonExp {
  InputtimestampComparisonExp(
      {this.$_eq,
      this.$_gt,
      this.$_gte,
      this.$_in,
      this.$_is_null,
      this.$_lt,
      this.$_lte,
      this.$_neq,
      this.$_nin});

  @override
  factory InputtimestampComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$InputtimestampComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  final DateTime? $_eq;

  @JsonKey(name: '_gt')
  final DateTime? $_gt;

  @JsonKey(name: '_gte')
  final DateTime? $_gte;

  @JsonKey(name: '_in')
  final List<DateTime>? $_in;

  @JsonKey(name: '_is_null')
  final bool? $_is_null;

  @JsonKey(name: '_lt')
  final DateTime? $_lt;

  @JsonKey(name: '_lte')
  final DateTime? $_lte;

  @JsonKey(name: '_neq')
  final DateTime? $_neq;

  @JsonKey(name: '_nin')
  final List<DateTime>? $_nin;

  Map<String, dynamic> toJson() => _$InputtimestampComparisonExpToJson(this);
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_is_null = $_is_null;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      l$$_eq,
      l$$_gt,
      l$$_gte,
      l$$_in == null ? null : Object.hashAll(l$$_in.map((v) => v)),
      l$$_is_null,
      l$$_lt,
      l$$_lte,
      l$$_neq,
      l$$_nin == null ? null : Object.hashAll(l$$_nin.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputtimestampComparisonExp) ||
        runtimeType != other.runtimeType) return false;
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (l$$_eq != lOther$$_eq) return false;
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (l$$_gt != lOther$$_gt) return false;
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (l$$_gte != lOther$$_gte) return false;
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) return false;
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) return false;
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }

    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (l$$_is_null != lOther$$_is_null) return false;
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (l$$_lt != lOther$$_lt) return false;
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (l$$_lte != lOther$$_lte) return false;
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (l$$_neq != lOther$$_neq) return false;
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) return false;
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) return false;
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputusersBoolExp {
  InputusersBoolExp(
      {this.$_and,
      this.$_not,
      this.$_or,
      this.attendings,
      this.contact_no,
      this.description,
      this.email,
      this.events,
      this.first_name,
      this.id,
      this.image,
      this.is_admin,
      this.last_name,
      this.participatings,
      this.password,
      this.username});

  @override
  factory InputusersBoolExp.fromJson(Map<String, dynamic> json) =>
      _$InputusersBoolExpFromJson(json);

  @JsonKey(name: '_and')
  final List<InputusersBoolExp>? $_and;

  @JsonKey(name: '_not')
  final InputusersBoolExp? $_not;

  @JsonKey(name: '_or')
  final List<InputusersBoolExp>? $_or;

  final InputattendingBoolExp? attendings;

  final InputStringComparisonExp? contact_no;

  final InputStringComparisonExp? description;

  final InputStringComparisonExp? email;

  final InputeventsBoolExp? events;

  final InputStringComparisonExp? first_name;

  final InputuuidComparisonExp? id;

  final InputStringComparisonExp? image;

  final InputBooleanComparisonExp? is_admin;

  final InputStringComparisonExp? last_name;

  final InputparticipatingBoolExp? participatings;

  final InputStringComparisonExp? password;

  final InputStringComparisonExp? username;

  Map<String, dynamic> toJson() => _$InputusersBoolExpToJson(this);
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$attendings = attendings;
    final l$contact_no = contact_no;
    final l$description = description;
    final l$email = email;
    final l$events = events;
    final l$first_name = first_name;
    final l$id = id;
    final l$image = image;
    final l$is_admin = is_admin;
    final l$last_name = last_name;
    final l$participatings = participatings;
    final l$password = password;
    final l$username = username;
    return Object.hashAll([
      l$$_and == null ? null : Object.hashAll(l$$_and.map((v) => v)),
      l$$_not,
      l$$_or == null ? null : Object.hashAll(l$$_or.map((v) => v)),
      l$attendings,
      l$contact_no,
      l$description,
      l$email,
      l$events,
      l$first_name,
      l$id,
      l$image,
      l$is_admin,
      l$last_name,
      l$participatings,
      l$password,
      l$username
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputusersBoolExp) || runtimeType != other.runtimeType)
      return false;
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) return false;
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) return false;
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }

    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (l$$_not != lOther$$_not) return false;
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) return false;
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) return false;
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }

    final l$attendings = attendings;
    final lOther$attendings = other.attendings;
    if (l$attendings != lOther$attendings) return false;
    final l$contact_no = contact_no;
    final lOther$contact_no = other.contact_no;
    if (l$contact_no != lOther$contact_no) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != lOther$events) return false;
    final l$first_name = first_name;
    final lOther$first_name = other.first_name;
    if (l$first_name != lOther$first_name) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$is_admin = is_admin;
    final lOther$is_admin = other.is_admin;
    if (l$is_admin != lOther$is_admin) return false;
    final l$last_name = last_name;
    final lOther$last_name = other.last_name;
    if (l$last_name != lOther$last_name) return false;
    final l$participatings = participatings;
    final lOther$participatings = other.participatings;
    if (l$participatings != lOther$participatings) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputusersInsertInput {
  InputusersInsertInput(
      {this.attendings,
      this.contact_no,
      this.description,
      this.email,
      this.events,
      this.first_name,
      this.id,
      this.image,
      this.is_admin,
      this.last_name,
      this.participatings,
      this.password,
      this.username});

  @override
  factory InputusersInsertInput.fromJson(Map<String, dynamic> json) =>
      _$InputusersInsertInputFromJson(json);

  final InputattendingArrRelInsertInput? attendings;

  final String? contact_no;

  final String? description;

  final String? email;

  final InputeventsArrRelInsertInput? events;

  final String? first_name;

  final String? id;

  final String? image;

  final bool? is_admin;

  final String? last_name;

  final InputparticipatingArrRelInsertInput? participatings;

  final String? password;

  final String? username;

  Map<String, dynamic> toJson() => _$InputusersInsertInputToJson(this);
  int get hashCode {
    final l$attendings = attendings;
    final l$contact_no = contact_no;
    final l$description = description;
    final l$email = email;
    final l$events = events;
    final l$first_name = first_name;
    final l$id = id;
    final l$image = image;
    final l$is_admin = is_admin;
    final l$last_name = last_name;
    final l$participatings = participatings;
    final l$password = password;
    final l$username = username;
    return Object.hashAll([
      l$attendings,
      l$contact_no,
      l$description,
      l$email,
      l$events,
      l$first_name,
      l$id,
      l$image,
      l$is_admin,
      l$last_name,
      l$participatings,
      l$password,
      l$username
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputusersInsertInput) || runtimeType != other.runtimeType)
      return false;
    final l$attendings = attendings;
    final lOther$attendings = other.attendings;
    if (l$attendings != lOther$attendings) return false;
    final l$contact_no = contact_no;
    final lOther$contact_no = other.contact_no;
    if (l$contact_no != lOther$contact_no) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$events = events;
    final lOther$events = other.events;
    if (l$events != lOther$events) return false;
    final l$first_name = first_name;
    final lOther$first_name = other.first_name;
    if (l$first_name != lOther$first_name) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$is_admin = is_admin;
    final lOther$is_admin = other.is_admin;
    if (l$is_admin != lOther$is_admin) return false;
    final l$last_name = last_name;
    final lOther$last_name = other.last_name;
    if (l$last_name != lOther$last_name) return false;
    final l$participatings = participatings;
    final lOther$participatings = other.participatings;
    if (l$participatings != lOther$participatings) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputusersObjRelInsertInput {
  InputusersObjRelInsertInput({required this.data, this.on_conflict});

  @override
  factory InputusersObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$InputusersObjRelInsertInputFromJson(json);

  final InputusersInsertInput data;

  final InputusersOnConflict? on_conflict;

  Map<String, dynamic> toJson() => _$InputusersObjRelInsertInputToJson(this);
  int get hashCode {
    final l$data = data;
    final l$on_conflict = on_conflict;
    return Object.hashAll([l$data, l$on_conflict]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputusersObjRelInsertInput) ||
        runtimeType != other.runtimeType) return false;
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) return false;
    final l$on_conflict = on_conflict;
    final lOther$on_conflict = other.on_conflict;
    if (l$on_conflict != lOther$on_conflict) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputusersOnConflict {
  InputusersOnConflict(
      {required this.constraint, required this.update_columns, this.where});

  @override
  factory InputusersOnConflict.fromJson(Map<String, dynamic> json) =>
      _$InputusersOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: EnumusersConstraint.$unknown)
  final EnumusersConstraint constraint;

  @JsonKey(unknownEnumValue: EnumusersUpdateColumn.$unknown)
  final List<EnumusersUpdateColumn> update_columns;

  final InputusersBoolExp? where;

  Map<String, dynamic> toJson() => _$InputusersOnConflictToJson(this);
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      l$where
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputusersOnConflict) || runtimeType != other.runtimeType)
      return false;
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) return false;
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) return false;
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) return false;
    }

    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputusersOrderBy {
  InputusersOrderBy(
      {this.attendings_aggregate,
      this.contact_no,
      this.description,
      this.email,
      this.events_aggregate,
      this.first_name,
      this.id,
      this.image,
      this.is_admin,
      this.last_name,
      this.participatings_aggregate,
      this.password,
      this.username});

  @override
  factory InputusersOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputusersOrderByFromJson(json);

  final InputattendingAggregateOrderBy? attendings_aggregate;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? contact_no;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? description;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? email;

  final InputeventsAggregateOrderBy? events_aggregate;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? first_name;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? image;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? is_admin;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? last_name;

  final InputparticipatingAggregateOrderBy? participatings_aggregate;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? password;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? username;

  Map<String, dynamic> toJson() => _$InputusersOrderByToJson(this);
  int get hashCode {
    final l$attendings_aggregate = attendings_aggregate;
    final l$contact_no = contact_no;
    final l$description = description;
    final l$email = email;
    final l$events_aggregate = events_aggregate;
    final l$first_name = first_name;
    final l$id = id;
    final l$image = image;
    final l$is_admin = is_admin;
    final l$last_name = last_name;
    final l$participatings_aggregate = participatings_aggregate;
    final l$password = password;
    final l$username = username;
    return Object.hashAll([
      l$attendings_aggregate,
      l$contact_no,
      l$description,
      l$email,
      l$events_aggregate,
      l$first_name,
      l$id,
      l$image,
      l$is_admin,
      l$last_name,
      l$participatings_aggregate,
      l$password,
      l$username
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputusersOrderBy) || runtimeType != other.runtimeType)
      return false;
    final l$attendings_aggregate = attendings_aggregate;
    final lOther$attendings_aggregate = other.attendings_aggregate;
    if (l$attendings_aggregate != lOther$attendings_aggregate) return false;
    final l$contact_no = contact_no;
    final lOther$contact_no = other.contact_no;
    if (l$contact_no != lOther$contact_no) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$events_aggregate = events_aggregate;
    final lOther$events_aggregate = other.events_aggregate;
    if (l$events_aggregate != lOther$events_aggregate) return false;
    final l$first_name = first_name;
    final lOther$first_name = other.first_name;
    if (l$first_name != lOther$first_name) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$is_admin = is_admin;
    final lOther$is_admin = other.is_admin;
    if (l$is_admin != lOther$is_admin) return false;
    final l$last_name = last_name;
    final lOther$last_name = other.last_name;
    if (l$last_name != lOther$last_name) return false;
    final l$participatings_aggregate = participatings_aggregate;
    final lOther$participatings_aggregate = other.participatings_aggregate;
    if (l$participatings_aggregate != lOther$participatings_aggregate)
      return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputusersPkColumnsInput {
  InputusersPkColumnsInput({required this.id});

  @override
  factory InputusersPkColumnsInput.fromJson(Map<String, dynamic> json) =>
      _$InputusersPkColumnsInputFromJson(json);

  final String id;

  Map<String, dynamic> toJson() => _$InputusersPkColumnsInputToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputusersPkColumnsInput) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputusersSetInput {
  InputusersSetInput(
      {this.contact_no,
      this.description,
      this.email,
      this.first_name,
      this.id,
      this.image,
      this.is_admin,
      this.last_name,
      this.password,
      this.username});

  @override
  factory InputusersSetInput.fromJson(Map<String, dynamic> json) =>
      _$InputusersSetInputFromJson(json);

  final String? contact_no;

  final String? description;

  final String? email;

  final String? first_name;

  final String? id;

  final String? image;

  final bool? is_admin;

  final String? last_name;

  final String? password;

  final String? username;

  Map<String, dynamic> toJson() => _$InputusersSetInputToJson(this);
  int get hashCode {
    final l$contact_no = contact_no;
    final l$description = description;
    final l$email = email;
    final l$first_name = first_name;
    final l$id = id;
    final l$image = image;
    final l$is_admin = is_admin;
    final l$last_name = last_name;
    final l$password = password;
    final l$username = username;
    return Object.hashAll([
      l$contact_no,
      l$description,
      l$email,
      l$first_name,
      l$id,
      l$image,
      l$is_admin,
      l$last_name,
      l$password,
      l$username
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputusersSetInput) || runtimeType != other.runtimeType)
      return false;
    final l$contact_no = contact_no;
    final lOther$contact_no = other.contact_no;
    if (l$contact_no != lOther$contact_no) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) return false;
    final l$first_name = first_name;
    final lOther$first_name = other.first_name;
    if (l$first_name != lOther$first_name) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) return false;
    final l$is_admin = is_admin;
    final lOther$is_admin = other.is_admin;
    if (l$is_admin != lOther$is_admin) return false;
    final l$last_name = last_name;
    final lOther$last_name = other.last_name;
    if (l$last_name != lOther$last_name) return false;
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) return false;
    final l$username = username;
    final lOther$username = other.username;
    if (l$username != lOther$username) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class InputuuidComparisonExp {
  InputuuidComparisonExp(
      {this.$_eq,
      this.$_gt,
      this.$_gte,
      this.$_in,
      this.$_is_null,
      this.$_lt,
      this.$_lte,
      this.$_neq,
      this.$_nin});

  @override
  factory InputuuidComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$InputuuidComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  final String? $_eq;

  @JsonKey(name: '_gt')
  final String? $_gt;

  @JsonKey(name: '_gte')
  final String? $_gte;

  @JsonKey(name: '_in')
  final List<String>? $_in;

  @JsonKey(name: '_is_null')
  final bool? $_is_null;

  @JsonKey(name: '_lt')
  final String? $_lt;

  @JsonKey(name: '_lte')
  final String? $_lte;

  @JsonKey(name: '_neq')
  final String? $_neq;

  @JsonKey(name: '_nin')
  final List<String>? $_nin;

  Map<String, dynamic> toJson() => _$InputuuidComparisonExpToJson(this);
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_is_null = $_is_null;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      l$$_eq,
      l$$_gt,
      l$$_gte,
      l$$_in == null ? null : Object.hashAll(l$$_in.map((v) => v)),
      l$$_is_null,
      l$$_lt,
      l$$_lte,
      l$$_neq,
      l$$_nin == null ? null : Object.hashAll(l$$_nin.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputuuidComparisonExp) || runtimeType != other.runtimeType)
      return false;
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (l$$_eq != lOther$$_eq) return false;
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (l$$_gt != lOther$$_gt) return false;
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (l$$_gte != lOther$$_gte) return false;
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) return false;
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) return false;
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }

    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (l$$_is_null != lOther$$_is_null) return false;
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (l$$_lt != lOther$$_lt) return false;
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (l$$_lte != lOther$$_lte) return false;
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (l$$_neq != lOther$$_neq) return false;
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) return false;
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) return false;
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }

    return true;
  }
}

enum EnumattendingConstraint {
  @JsonValue('attending_pkey')
  attendingPkey,
  $unknown
}

enum EnumattendingSelectColumn {
  @JsonValue('event_id')
  eventId,
  @JsonValue('id')
  id,
  @JsonValue('user_id')
  userId,
  $unknown
}

enum EnumattendingUpdateColumn {
  @JsonValue('event_id')
  eventId,
  @JsonValue('id')
  id,
  @JsonValue('user_id')
  userId,
  $unknown
}

enum EnumeventTypeConstraint {
  @JsonValue('event_type_pkey')
  eventTypePkey,
  $unknown
}

enum EnumeventTypeSelectColumn {
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  $unknown
}

enum EnumeventTypeUpdateColumn {
  @JsonValue('id')
  id,
  @JsonValue('name')
  name,
  $unknown
}

enum EnumeventsConstraint {
  @JsonValue('events_pkey')
  eventsPkey,
  $unknown
}

enum EnumeventsSelectColumn {
  @JsonValue('address')
  address,
  @JsonValue('banner_image')
  bannerImage,
  @JsonValue('created_at')
  createdAt,
  @JsonValue('description')
  description,
  @JsonValue('end_date')
  endDate,
  @JsonValue('id')
  id,
  @JsonValue('image')
  image,
  @JsonValue('location')
  location,
  @JsonValue('name')
  name,
  @JsonValue('organizer')
  organizer,
  @JsonValue('start_date')
  startDate,
  @JsonValue('type_id')
  typeId,
  $unknown
}

enum EnumeventsUpdateColumn {
  @JsonValue('address')
  address,
  @JsonValue('banner_image')
  bannerImage,
  @JsonValue('created_at')
  createdAt,
  @JsonValue('description')
  description,
  @JsonValue('end_date')
  endDate,
  @JsonValue('id')
  id,
  @JsonValue('image')
  image,
  @JsonValue('location')
  location,
  @JsonValue('name')
  name,
  @JsonValue('organizer')
  organizer,
  @JsonValue('start_date')
  startDate,
  @JsonValue('type_id')
  typeId,
  $unknown
}

enum EnumorderBy {
  @JsonValue('asc')
  asc,
  @JsonValue('asc_nulls_first')
  ascNullsFirst,
  @JsonValue('asc_nulls_last')
  ascNullsLast,
  @JsonValue('desc')
  desc,
  @JsonValue('desc_nulls_first')
  descNullsFirst,
  @JsonValue('desc_nulls_last')
  descNullsLast,
  $unknown
}

enum EnumparticipatingConstraint {
  @JsonValue('participating_pkey')
  participatingPkey,
  $unknown
}

enum EnumparticipatingSelectColumn {
  @JsonValue('approved')
  approved,
  @JsonValue('event_id')
  eventId,
  @JsonValue('id')
  id,
  @JsonValue('user_id')
  userId,
  $unknown
}

enum EnumparticipatingUpdateColumn {
  @JsonValue('approved')
  approved,
  @JsonValue('event_id')
  eventId,
  @JsonValue('id')
  id,
  @JsonValue('user_id')
  userId,
  $unknown
}

enum EnumusersConstraint {
  @JsonValue('users_pkey')
  usersPkey,
  @JsonValue('users_username_key')
  usersUsernameKey,
  $unknown
}

enum EnumusersSelectColumn {
  @JsonValue('contact_no')
  contactNo,
  @JsonValue('description')
  description,
  @JsonValue('email')
  email,
  @JsonValue('first_name')
  firstName,
  @JsonValue('id')
  id,
  @JsonValue('image')
  image,
  @JsonValue('is_admin')
  isAdmin,
  @JsonValue('last_name')
  lastName,
  @JsonValue('password')
  password,
  @JsonValue('username')
  username,
  $unknown
}

enum EnumusersUpdateColumn {
  @JsonValue('contact_no')
  contactNo,
  @JsonValue('description')
  description,
  @JsonValue('email')
  email,
  @JsonValue('first_name')
  firstName,
  @JsonValue('id')
  id,
  @JsonValue('image')
  image,
  @JsonValue('is_admin')
  isAdmin,
  @JsonValue('last_name')
  lastName,
  @JsonValue('password')
  password,
  @JsonValue('username')
  username,
  $unknown
}

const POSSIBLE_TYPES_MAP = const {};
