import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:historical_repository/models/workout_model.dart';

part 'historical_trainings_state.freezed.dart';

@freezed
abstract class HistoricalTrainingsState with _$HistoricalTrainingsState {
  const factory HistoricalTrainingsState.initial(List<WorkoutModel> workouts) = HistoricalTrainingsInitial;

  const factory HistoricalTrainingsState.loading() = HistoricalTrainingsLoading;
}
