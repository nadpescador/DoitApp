import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tabata/presentation/tabata_form_pages/view_model/tabata_form_view_model.dart';

part 'tabata_form_state.freezed.dart';

@freezed
abstract class TabataFormState with _$TabataFormState {
  const factory TabataFormState.started(TabataFormViewModel formViewModel) = TabataFormStateStarted;
}
