// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'workout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WorkoutModel _$WorkoutModelFromJson(Map<String, dynamic> json) {
  return _WorkoutModel.fromJson(json);
}

/// @nodoc
class _$WorkoutModelTearOff {
  const _$WorkoutModelTearOff();

// ignore: unused_element
  _WorkoutModel call({int workTime, int restTime, int repetitions}) {
    return _WorkoutModel(
      workTime: workTime,
      restTime: restTime,
      repetitions: repetitions,
    );
  }

// ignore: unused_element
  WorkoutModel fromJson(Map<String, Object> json) {
    return WorkoutModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WorkoutModel = _$WorkoutModelTearOff();

/// @nodoc
mixin _$WorkoutModel {
  int get workTime;
  int get restTime;
  int get repetitions;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WorkoutModelCopyWith<WorkoutModel> get copyWith;
}

/// @nodoc
abstract class $WorkoutModelCopyWith<$Res> {
  factory $WorkoutModelCopyWith(
          WorkoutModel value, $Res Function(WorkoutModel) then) =
      _$WorkoutModelCopyWithImpl<$Res>;
  $Res call({int workTime, int restTime, int repetitions});
}

/// @nodoc
class _$WorkoutModelCopyWithImpl<$Res> implements $WorkoutModelCopyWith<$Res> {
  _$WorkoutModelCopyWithImpl(this._value, this._then);

  final WorkoutModel _value;
  // ignore: unused_field
  final $Res Function(WorkoutModel) _then;

  @override
  $Res call({
    Object workTime = freezed,
    Object restTime = freezed,
    Object repetitions = freezed,
  }) {
    return _then(_value.copyWith(
      workTime: workTime == freezed ? _value.workTime : workTime as int,
      restTime: restTime == freezed ? _value.restTime : restTime as int,
      repetitions:
          repetitions == freezed ? _value.repetitions : repetitions as int,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutModelCopyWith<$Res>
    implements $WorkoutModelCopyWith<$Res> {
  factory _$WorkoutModelCopyWith(
          _WorkoutModel value, $Res Function(_WorkoutModel) then) =
      __$WorkoutModelCopyWithImpl<$Res>;
  @override
  $Res call({int workTime, int restTime, int repetitions});
}

/// @nodoc
class __$WorkoutModelCopyWithImpl<$Res> extends _$WorkoutModelCopyWithImpl<$Res>
    implements _$WorkoutModelCopyWith<$Res> {
  __$WorkoutModelCopyWithImpl(
      _WorkoutModel _value, $Res Function(_WorkoutModel) _then)
      : super(_value, (v) => _then(v as _WorkoutModel));

  @override
  _WorkoutModel get _value => super._value as _WorkoutModel;

  @override
  $Res call({
    Object workTime = freezed,
    Object restTime = freezed,
    Object repetitions = freezed,
  }) {
    return _then(_WorkoutModel(
      workTime: workTime == freezed ? _value.workTime : workTime as int,
      restTime: restTime == freezed ? _value.restTime : restTime as int,
      repetitions:
          repetitions == freezed ? _value.repetitions : repetitions as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WorkoutModel implements _WorkoutModel {
  const _$_WorkoutModel({this.workTime, this.restTime, this.repetitions});

  factory _$_WorkoutModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkoutModelFromJson(json);

  @override
  final int workTime;
  @override
  final int restTime;
  @override
  final int repetitions;

  @override
  String toString() {
    return 'WorkoutModel(workTime: $workTime, restTime: $restTime, repetitions: $repetitions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutModel &&
            (identical(other.workTime, workTime) ||
                const DeepCollectionEquality()
                    .equals(other.workTime, workTime)) &&
            (identical(other.restTime, restTime) ||
                const DeepCollectionEquality()
                    .equals(other.restTime, restTime)) &&
            (identical(other.repetitions, repetitions) ||
                const DeepCollectionEquality()
                    .equals(other.repetitions, repetitions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workTime) ^
      const DeepCollectionEquality().hash(restTime) ^
      const DeepCollectionEquality().hash(repetitions);

  @JsonKey(ignore: true)
  @override
  _$WorkoutModelCopyWith<_WorkoutModel> get copyWith =>
      __$WorkoutModelCopyWithImpl<_WorkoutModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkoutModelToJson(this);
  }
}

abstract class _WorkoutModel implements WorkoutModel {
  const factory _WorkoutModel({int workTime, int restTime, int repetitions}) =
      _$_WorkoutModel;

  factory _WorkoutModel.fromJson(Map<String, dynamic> json) =
      _$_WorkoutModel.fromJson;

  @override
  int get workTime;
  @override
  int get restTime;
  @override
  int get repetitions;
  @override
  @JsonKey(ignore: true)
  _$WorkoutModelCopyWith<_WorkoutModel> get copyWith;
}
