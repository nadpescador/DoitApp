import 'package:flutter/foundation.dart';
import 'package:historical_repository/models/workout_model.dart';
import 'package:persistance_service/implementation/persistance_service.dart';

class HistoricalRepository {
  HistoricalRepository({
    @required this.persistanceService,
  }) : assert(persistanceService != null);

  PersistanceService persistanceService;

  void addFinishedExercise(int workTime, int restTime, int repetitions) {
    final newWorkoutModel = WorkoutModel(
      repetitions: repetitions,
      restTime: restTime,
      workTime: workTime,
      dateTime: DateTime.now().toLocal().toIso8601String(),
    );

    persistanceService.persistExercise(newWorkoutModel);
  }

  Future<List<WorkoutModel>> getFinishedExercises() async {
    return await persistanceService.getExcercises();
  }

  Future<WorkoutModel> getLastExercise() async {
    return await persistanceService.getLastExercise();
  }
}
