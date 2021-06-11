// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutModel _$_$_WorkoutModelFromJson(Map<String, dynamic> json) {
  return _$_WorkoutModel(
    workTime: json['workTime'] as int,
    restTime: json['restTime'] as int,
    repetitions: json['repetitions'] as int,
  );
}

Map<String, dynamic> _$_$_WorkoutModelToJson(_$_WorkoutModel instance) =>
    <String, dynamic>{
      'workTime': instance.workTime,
      'restTime': instance.restTime,
      'repetitions': instance.repetitions,
    };
