import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';
import 'package:tabata/presentation/tabata_work_page/bloc/tabata_page_state.dart';

class TabataPageCubit extends Cubit<TabataPageState> {
  TabataPageCubit(
    TabataFormCubit tabataFormCubit,
  )   : _tabataFormCubit = tabataFormCubit,
        super(TabataPageState.playing(
          tabataFormCubit.state.formViewModel.workoutTime,
          tabataFormCubit.state.formViewModel.restingTime,
          tabataFormCubit.state.formViewModel.repetitions,
        )) {
    playTraining();
  }

  final TabataFormCubit _tabataFormCubit;

  void playTraining() {
    state.maybeWhen(
      orElse: () => null,
      resting: (workTime, restTime, repetitions) => emit(
        TabataPageState.playing(workTime, restTime, repetitions),
      ),
    );
  }

  void finishTraining() {
    emit(TabataPageState.finished());
  }

  void restartTabata() {
    emit(TabataPageState.playing(
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
          TabataPageState.resting(workTime, restTime, repetitions - 1),
        );
      },
    );
  }
}
