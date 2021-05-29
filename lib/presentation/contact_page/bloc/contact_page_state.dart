import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'contact_page_state.freezed.dart';

@freezed
abstract class ContactPageState with _$ContactPageState {
  factory ContactPageState.loading() = ContactPageStateLoading;
}
