// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tabata_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TabataFormStateTearOff {
  const _$TabataFormStateTearOff();

// ignore: unused_element
  TabataFormStateStarted started(TabataFormViewModel formViewModel) {
    return TabataFormStateStarted(
      formViewModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TabataFormState = _$TabataFormStateTearOff();

/// @nodoc
mixin _$TabataFormState {
  TabataFormViewModel get formViewModel;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(TabataFormViewModel formViewModel),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(TabataFormViewModel formViewModel),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(TabataFormStateStarted value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(TabataFormStateStarted value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $TabataFormStateCopyWith<TabataFormState> get copyWith;
}

/// @nodoc
abstract class $TabataFormStateCopyWith<$Res> {
  factory $TabataFormStateCopyWith(
          TabataFormState value, $Res Function(TabataFormState) then) =
      _$TabataFormStateCopyWithImpl<$Res>;
  $Res call({TabataFormViewModel formViewModel});

  $TabataFormViewModelCopyWith<$Res> get formViewModel;
}

/// @nodoc
class _$TabataFormStateCopyWithImpl<$Res>
    implements $TabataFormStateCopyWith<$Res> {
  _$TabataFormStateCopyWithImpl(this._value, this._then);

  final TabataFormState _value;
  // ignore: unused_field
  final $Res Function(TabataFormState) _then;

  @override
  $Res call({
    Object formViewModel = freezed,
  }) {
    return _then(_value.copyWith(
      formViewModel: formViewModel == freezed
          ? _value.formViewModel
          : formViewModel as TabataFormViewModel,
    ));
  }

  @override
  $TabataFormViewModelCopyWith<$Res> get formViewModel {
    if (_value.formViewModel == null) {
      return null;
    }
    return $TabataFormViewModelCopyWith<$Res>(_value.formViewModel, (value) {
      return _then(_value.copyWith(formViewModel: value));
    });
  }
}

/// @nodoc
abstract class $TabataFormStateStartedCopyWith<$Res>
    implements $TabataFormStateCopyWith<$Res> {
  factory $TabataFormStateStartedCopyWith(TabataFormStateStarted value,
          $Res Function(TabataFormStateStarted) then) =
      _$TabataFormStateStartedCopyWithImpl<$Res>;
  @override
  $Res call({TabataFormViewModel formViewModel});

  @override
  $TabataFormViewModelCopyWith<$Res> get formViewModel;
}

/// @nodoc
class _$TabataFormStateStartedCopyWithImpl<$Res>
    extends _$TabataFormStateCopyWithImpl<$Res>
    implements $TabataFormStateStartedCopyWith<$Res> {
  _$TabataFormStateStartedCopyWithImpl(TabataFormStateStarted _value,
      $Res Function(TabataFormStateStarted) _then)
      : super(_value, (v) => _then(v as TabataFormStateStarted));

  @override
  TabataFormStateStarted get _value => super._value as TabataFormStateStarted;

  @override
  $Res call({
    Object formViewModel = freezed,
  }) {
    return _then(TabataFormStateStarted(
      formViewModel == freezed
          ? _value.formViewModel
          : formViewModel as TabataFormViewModel,
    ));
  }
}

/// @nodoc
class _$TabataFormStateStarted implements TabataFormStateStarted {
  const _$TabataFormStateStarted(this.formViewModel)
      : assert(formViewModel != null);

  @override
  final TabataFormViewModel formViewModel;

  @override
  String toString() {
    return 'TabataFormState.started(formViewModel: $formViewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TabataFormStateStarted &&
            (identical(other.formViewModel, formViewModel) ||
                const DeepCollectionEquality()
                    .equals(other.formViewModel, formViewModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(formViewModel);

  @JsonKey(ignore: true)
  @override
  $TabataFormStateStartedCopyWith<TabataFormStateStarted> get copyWith =>
      _$TabataFormStateStartedCopyWithImpl<TabataFormStateStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(TabataFormViewModel formViewModel),
  }) {
    assert(started != null);
    return started(formViewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(TabataFormViewModel formViewModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(formViewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(TabataFormStateStarted value),
  }) {
    assert(started != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(TabataFormStateStarted value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class TabataFormStateStarted implements TabataFormState {
  const factory TabataFormStateStarted(TabataFormViewModel formViewModel) =
      _$TabataFormStateStarted;

  @override
  TabataFormViewModel get formViewModel;
  @override
  @JsonKey(ignore: true)
  $TabataFormStateStartedCopyWith<TabataFormStateStarted> get copyWith;
}
