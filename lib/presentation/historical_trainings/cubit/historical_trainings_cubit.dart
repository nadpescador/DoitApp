import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:historical_repository/historical_repositories.dart';
import 'package:tabata/presentation/historical_trainings/cubit/historical_trainings_state.dart';

class HistoricalTrainingsCubit extends Cubit<HistoricalTrainingsState> {
  HistoricalTrainingsCubit({
    @required this.historicalRepository,
  })  : assert(historicalRepository != null),
        super(HistoricalTrainingsState.loading()) {
    getWorkoutsFromPersistance();
  }

  HistoricalRepository historicalRepository;

  void getWorkoutsFromPersistance() async {
    final workouts = await historicalRepository.getFinishedExercises();

    emit(HistoricalTrainingsState.initial(workouts));
  }
}
