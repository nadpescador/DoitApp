import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'workout_model.freezed.dart';
part 'workout_model.g.dart';

WorkoutModel workoutModelFromJson(String str) => WorkoutModel.fromJson(json.decode(str));

String workoutModelToJson(WorkoutModel data) => json.encode(data.toJson());

@freezed
abstract class WorkoutModel with _$WorkoutModel {
  const factory WorkoutModel({
    int workTime,
    int restTime,
    int repetitions,
  }) = _WorkoutModel;

  factory WorkoutModel.fromJson(Map<String, dynamic> json) => _$WorkoutModelFromJson(json);
}
