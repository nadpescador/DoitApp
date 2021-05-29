import 'package:freezed_annotation/freezed_annotation.dart';

part 'tabata_form_view_model.freezed.dart';

@freezed
abstract class TabataFormViewModel with _$TabataFormViewModel {
  factory TabataFormViewModel({
    int workoutTime,
    int restingTime,
    int repetitions,
  }) = _TabataFormViewModelBody;

  TabataFormViewModel._();

  factory TabataFormViewModel.empty() => TabataFormViewModel(
        workoutTime: 0,
        repetitions: 0,
        restingTime: 0,
      );
}
