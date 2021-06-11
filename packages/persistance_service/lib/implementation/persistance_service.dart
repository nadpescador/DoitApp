import 'package:flutter/foundation.dart';
import 'package:historical_repository/historical_repositories.dart';
import 'package:hive/hive.dart';

class PersistanceService {
  PersistanceService({
    @required this.documentDirectory,
  });

  final String documentDirectory;

  Future<void> persistExercise(WorkoutModel workoutModel) async {
    final exercisesBox = await Hive.openBox('exercises');
    exercisesBox.add(workoutModelToJson(workoutModel));
  }

  Future<List<WorkoutModel>> getExcercises() async {
    final exercisesBox = await Hive.openBox('exercises');
    final exercises = exercisesBox.values.map((exercise) => exercise).toList();
    return exercises.map((exercise) => workoutModelFromJson(exercise)).toList();
  }
}
