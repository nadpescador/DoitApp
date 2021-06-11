// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'historical_trainings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HistoricalTrainingsStateTearOff {
  const _$HistoricalTrainingsStateTearOff();

// ignore: unused_element
  HistoricalTrainingsInitial initial(List<WorkoutModel> workouts) {
    return HistoricalTrainingsInitial(
      workouts,
    );
  }

// ignore: unused_element
  HistoricalTrainingsLoading loading() {
    return const HistoricalTrainingsLoading();
  }
}

/// @nodoc
// ignore: unused_element
const $HistoricalTrainingsState = _$HistoricalTrainingsStateTearOff();

/// @nodoc
mixin _$HistoricalTrainingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<WorkoutModel> workouts),
    @required TResult loading(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<WorkoutModel> workouts),
    TResult loading(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(HistoricalTrainingsInitial value),
    @required TResult loading(HistoricalTrainingsLoading value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(HistoricalTrainingsInitial value),
    TResult loading(HistoricalTrainingsLoading value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $HistoricalTrainingsStateCopyWith<$Res> {
  factory $HistoricalTrainingsStateCopyWith(HistoricalTrainingsState value,
          $Res Function(HistoricalTrainingsState) then) =
      _$HistoricalTrainingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoricalTrainingsStateCopyWithImpl<$Res>
    implements $HistoricalTrainingsStateCopyWith<$Res> {
  _$HistoricalTrainingsStateCopyWithImpl(this._value, this._then);

  final HistoricalTrainingsState _value;
  // ignore: unused_field
  final $Res Function(HistoricalTrainingsState) _then;
}

/// @nodoc
abstract class $HistoricalTrainingsInitialCopyWith<$Res> {
  factory $HistoricalTrainingsInitialCopyWith(HistoricalTrainingsInitial value,
          $Res Function(HistoricalTrainingsInitial) then) =
      _$HistoricalTrainingsInitialCopyWithImpl<$Res>;
  $Res call({List<WorkoutModel> workouts});
}

/// @nodoc
class _$HistoricalTrainingsInitialCopyWithImpl<$Res>
    extends _$HistoricalTrainingsStateCopyWithImpl<$Res>
    implements $HistoricalTrainingsInitialCopyWith<$Res> {
  _$HistoricalTrainingsInitialCopyWithImpl(HistoricalTrainingsInitial _value,
      $Res Function(HistoricalTrainingsInitial) _then)
      : super(_value, (v) => _then(v as HistoricalTrainingsInitial));

  @override
  HistoricalTrainingsInitial get _value =>
      super._value as HistoricalTrainingsInitial;

  @override
  $Res call({
    Object workouts = freezed,
  }) {
    return _then(HistoricalTrainingsInitial(
      workouts == freezed ? _value.workouts : workouts as List<WorkoutModel>,
    ));
  }
}

/// @nodoc
class _$HistoricalTrainingsInitial implements HistoricalTrainingsInitial {
  const _$HistoricalTrainingsInitial(this.workouts) : assert(workouts != null);

  @override
  final List<WorkoutModel> workouts;

  @override
  String toString() {
    return 'HistoricalTrainingsState.initial(workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistoricalTrainingsInitial &&
            (identical(other.workouts, workouts) ||
                const DeepCollectionEquality()
                    .equals(other.workouts, workouts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workouts);

  @JsonKey(ignore: true)
  @override
  $HistoricalTrainingsInitialCopyWith<HistoricalTrainingsInitial>
      get copyWith =>
          _$HistoricalTrainingsInitialCopyWithImpl<HistoricalTrainingsInitial>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<WorkoutModel> workouts),
    @required TResult loading(),
  }) {
    assert(initial != null);
    assert(loading != null);
    return initial(workouts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<WorkoutModel> workouts),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(workouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(HistoricalTrainingsInitial value),
    @required TResult loading(HistoricalTrainingsLoading value),
  }) {
    assert(initial != null);
    assert(loading != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(HistoricalTrainingsInitial value),
    TResult loading(HistoricalTrainingsLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HistoricalTrainingsInitial implements HistoricalTrainingsState {
  const factory HistoricalTrainingsInitial(List<WorkoutModel> workouts) =
      _$HistoricalTrainingsInitial;

  List<WorkoutModel> get workouts;
  @JsonKey(ignore: true)
  $HistoricalTrainingsInitialCopyWith<HistoricalTrainingsInitial> get copyWith;
}

/// @nodoc
abstract class $HistoricalTrainingsLoadingCopyWith<$Res> {
  factory $HistoricalTrainingsLoadingCopyWith(HistoricalTrainingsLoading value,
          $Res Function(HistoricalTrainingsLoading) then) =
      _$HistoricalTrainingsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoricalTrainingsLoadingCopyWithImpl<$Res>
    extends _$HistoricalTrainingsStateCopyWithImpl<$Res>
    implements $HistoricalTrainingsLoadingCopyWith<$Res> {
  _$HistoricalTrainingsLoadingCopyWithImpl(HistoricalTrainingsLoading _value,
      $Res Function(HistoricalTrainingsLoading) _then)
      : super(_value, (v) => _then(v as HistoricalTrainingsLoading));

  @override
  HistoricalTrainingsLoading get _value =>
      super._value as HistoricalTrainingsLoading;
}

/// @nodoc
class _$HistoricalTrainingsLoading implements HistoricalTrainingsLoading {
  const _$HistoricalTrainingsLoading();

  @override
  String toString() {
    return 'HistoricalTrainingsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HistoricalTrainingsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(List<WorkoutModel> workouts),
    @required TResult loading(),
  }) {
    assert(initial != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(List<WorkoutModel> workouts),
    TResult loading(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(HistoricalTrainingsInitial value),
    @required TResult loading(HistoricalTrainingsLoading value),
  }) {
    assert(initial != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(HistoricalTrainingsInitial value),
    TResult loading(HistoricalTrainingsLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HistoricalTrainingsLoading implements HistoricalTrainingsState {
  const factory HistoricalTrainingsLoading() = _$HistoricalTrainingsLoading;
}
