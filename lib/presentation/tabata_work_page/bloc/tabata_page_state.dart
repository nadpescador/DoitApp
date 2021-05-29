import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'tabata_page_state.freezed.dart';

@freezed
abstract class TabataPageState with _$TabataPageState {
  factory TabataPageState.playing(int workTime, int restTime, int repetitions) = TabataPageStatePlaying;

  factory TabataPageState.resting(int workTime, int restTime, int repetitions) = TabataPageStateResting;

  factory TabataPageState.finished() = TabataPageStateFinished;
}
