import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'tabata_page_state.freezed.dart';

@freezed
class TabataPageState with _$TabataPageState {
  factory TabataPageState.loading() = TabataPageStateLoading;

  factory TabataPageState.loaded() = TabataPageStateLoading;

  factory TabataPageState.failed() = TabataPageStateFailure;
}
