import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:historical_repository/historical_repositories.dart';
import 'package:tabata/presentation/counter_page/bloc/counter_page_state.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';

class CounterPageCubit extends Cubit<CounterPageState> {
  CounterPageCubit(
    TabataFormCubit tabataFormCubit,
    HistoricalRepository historicalRepository,
  )   : _tabataFormCubit = tabataFormCubit,
        _historicalRepository = historicalRepository,
        super(CounterPageState.playing(
          tabataFormCubit.state.formViewModel.workoutTime,
          tabataFormCubit.state.formViewModel.restingTime,
          tabataFormCubit.state.formViewModel.repetitions,
        )) {
    playTraining();
  }

  final TabataFormCubit _tabataFormCubit;
  final HistoricalRepository _historicalRepository;

  void playTraining() {
    state.maybeWhen(
      orElse: () => null,
      resting: (workTime, restTime, repetitions) => emit(
        CounterPageState.playing(workTime, restTime, repetitions),
      ),
    );
  }

  void finishTraining() {
    _historicalRepository.addFinishedExercise(
      _tabataFormCubit.state.formViewModel.workoutTime,
      _tabataFormCubit.state.formViewModel.restingTime,
      _tabataFormCubit.state.formViewModel.repetitions,
    );
    emit(CounterPageState.finished());
  }

  void restartTabata() {
    emit(CounterPageState.playing(
      _tabataFormCubit.state.formViewModel.workoutTime,
      _tabataFormCubit.state.formViewModel.restingTime,
      _tabataFormCubit.state.formViewModel.repetitions,
    ));
  }

  void startRestingTime() {
    state.maybeWhen(
      orElse: () => null,
      playing: (workTime, restTime, repetitions) {
        emit(
          CounterPageState.resting(workTime, restTime, repetitions - 1),
        );
      },
    );
  }

  void repeatLastTraining() async {
    final lastExercise = await _historicalRepository.getLastExercise();
    _tabataFormCubit.setRepetitions(lastExercise.repetitions);
    _tabataFormCubit.setWorkoutTime(lastExercise.workTime);
    _tabataFormCubit.setRestingTime(lastExercise.restTime);
  }
}
