import 'package:bloc/bloc.dart';
import 'package:tabata/presentation/tabata_form_pages/view_model/tabata_form_view_model.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_state.dart';

class TabataFormCubit extends Cubit<TabataFormState> {
  TabataFormCubit() : super(TabataFormState.started(TabataFormViewModel.empty())) {
    startNewRoutine();
  }

  void startNewRoutine() {
    emit(TabataFormState.started(TabataFormViewModel.empty()));
  }

  void setWorkoutTime(int time) {
    emit(
      TabataFormState.started(
        state.maybeWhen(
            started: (formViewModel) => formViewModel.copyWith(
                  workoutTime: time,
                ),
            orElse: () => null),
      ),
    );
  }

  void setRepetitions(int repetitions) {
    emit(
      TabataFormState.started(
        state.maybeWhen(
            started: (formViewModel) => formViewModel.copyWith(
                  repetitions: repetitions,
                ),
            orElse: () => null),
      ),
    );
  }

  void setRestingTime(int restingTime) {
    emit(
      TabataFormState.started(
        state.maybeWhen(
            started: (formViewModel) => formViewModel.copyWith(
                  restingTime: restingTime,
                ),
            orElse: () => null),
      ),
    );
  }
}
