import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_page_state.freezed.dart';

@freezed
abstract class CounterPageState with _$CounterPageState {
  factory CounterPageState.playing(int workTime, int restTime, int repetitions) = CounterPageStatePlaying;

  factory CounterPageState.resting(int workTime, int restTime, int repetitions) = CounterPageStateResting;

  factory CounterPageState.finished() = CounterPageStateFinished;
}
