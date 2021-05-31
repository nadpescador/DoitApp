// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'counter_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CounterPageStateTearOff {
  const _$CounterPageStateTearOff();

// ignore: unused_element
  CounterPageStatePlaying playing(int workTime, int restTime, int repetitions) {
    return CounterPageStatePlaying(
      workTime,
      restTime,
      repetitions,
    );
  }

// ignore: unused_element
  CounterPageStateResting resting(int workTime, int restTime, int repetitions) {
    return CounterPageStateResting(
      workTime,
      restTime,
      repetitions,
    );
  }

// ignore: unused_element
  CounterPageStateFinished finished() {
    return CounterPageStateFinished();
  }
}

/// @nodoc
// ignore: unused_element
const $CounterPageState = _$CounterPageStateTearOff();

/// @nodoc
mixin _$CounterPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult playing(int workTime, int restTime, int repetitions),
    @required TResult resting(int workTime, int restTime, int repetitions),
    @required TResult finished(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult playing(int workTime, int restTime, int repetitions),
    TResult resting(int workTime, int restTime, int repetitions),
    TResult finished(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult playing(CounterPageStatePlaying value),
    @required TResult resting(CounterPageStateResting value),
    @required TResult finished(CounterPageStateFinished value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playing(CounterPageStatePlaying value),
    TResult resting(CounterPageStateResting value),
    TResult finished(CounterPageStateFinished value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $CounterPageStateCopyWith<$Res> {
  factory $CounterPageStateCopyWith(
          CounterPageState value, $Res Function(CounterPageState) then) =
      _$CounterPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterPageStateCopyWithImpl<$Res>
    implements $CounterPageStateCopyWith<$Res> {
  _$CounterPageStateCopyWithImpl(this._value, this._then);

  final CounterPageState _value;
  // ignore: unused_field
  final $Res Function(CounterPageState) _then;
}

/// @nodoc
abstract class $CounterPageStatePlayingCopyWith<$Res> {
  factory $CounterPageStatePlayingCopyWith(CounterPageStatePlaying value,
          $Res Function(CounterPageStatePlaying) then) =
      _$CounterPageStatePlayingCopyWithImpl<$Res>;
  $Res call({int workTime, int restTime, int repetitions});
}

/// @nodoc
class _$CounterPageStatePlayingCopyWithImpl<$Res>
    extends _$CounterPageStateCopyWithImpl<$Res>
    implements $CounterPageStatePlayingCopyWith<$Res> {
  _$CounterPageStatePlayingCopyWithImpl(CounterPageStatePlaying _value,
      $Res Function(CounterPageStatePlaying) _then)
      : super(_value, (v) => _then(v as CounterPageStatePlaying));

  @override
  CounterPageStatePlaying get _value => super._value as CounterPageStatePlaying;

  @override
  $Res call({
    Object workTime = freezed,
    Object restTime = freezed,
    Object repetitions = freezed,
  }) {
    return _then(CounterPageStatePlaying(
      workTime == freezed ? _value.workTime : workTime as int,
      restTime == freezed ? _value.restTime : restTime as int,
      repetitions == freezed ? _value.repetitions : repetitions as int,
    ));
  }
}

/// @nodoc
class _$CounterPageStatePlaying implements CounterPageStatePlaying {
  _$CounterPageStatePlaying(this.workTime, this.restTime, this.repetitions)
      : assert(workTime != null),
        assert(restTime != null),
        assert(repetitions != null);

  @override
  final int workTime;
  @override
  final int restTime;
  @override
  final int repetitions;

  @override
  String toString() {
    return 'CounterPageState.playing(workTime: $workTime, restTime: $restTime, repetitions: $repetitions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CounterPageStatePlaying &&
            (identical(other.workTime, workTime) ||
                const DeepCollectionEquality()
                    .equals(other.workTime, workTime)) &&
            (identical(other.restTime, restTime) ||
                const DeepCollectionEquality()
                    .equals(other.restTime, restTime)) &&
            (identical(other.repetitions, repetitions) ||
                const DeepCollectionEquality()
                    .equals(other.repetitions, repetitions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workTime) ^
      const DeepCollectionEquality().hash(restTime) ^
      const DeepCollectionEquality().hash(repetitions);

  @JsonKey(ignore: true)
  @override
  $CounterPageStatePlayingCopyWith<CounterPageStatePlaying> get copyWith =>
      _$CounterPageStatePlayingCopyWithImpl<CounterPageStatePlaying>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult playing(int workTime, int restTime, int repetitions),
    @required TResult resting(int workTime, int restTime, int repetitions),
    @required TResult finished(),
  }) {
    assert(playing != null);
    assert(resting != null);
    assert(finished != null);
    return playing(workTime, restTime, repetitions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult playing(int workTime, int restTime, int repetitions),
    TResult resting(int workTime, int restTime, int repetitions),
    TResult finished(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (playing != null) {
      return playing(workTime, restTime, repetitions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult playing(CounterPageStatePlaying value),
    @required TResult resting(CounterPageStateResting value),
    @required TResult finished(CounterPageStateFinished value),
  }) {
    assert(playing != null);
    assert(resting != null);
    assert(finished != null);
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playing(CounterPageStatePlaying value),
    TResult resting(CounterPageStateResting value),
    TResult finished(CounterPageStateFinished value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class CounterPageStatePlaying implements CounterPageState {
  factory CounterPageStatePlaying(int workTime, int restTime, int repetitions) =
      _$CounterPageStatePlaying;

  int get workTime;
  int get restTime;
  int get repetitions;
  @JsonKey(ignore: true)
  $CounterPageStatePlayingCopyWith<CounterPageStatePlaying> get copyWith;
}

/// @nodoc
abstract class $CounterPageStateRestingCopyWith<$Res> {
  factory $CounterPageStateRestingCopyWith(CounterPageStateResting value,
          $Res Function(CounterPageStateResting) then) =
      _$CounterPageStateRestingCopyWithImpl<$Res>;
  $Res call({int workTime, int restTime, int repetitions});
}

/// @nodoc
class _$CounterPageStateRestingCopyWithImpl<$Res>
    extends _$CounterPageStateCopyWithImpl<$Res>
    implements $CounterPageStateRestingCopyWith<$Res> {
  _$CounterPageStateRestingCopyWithImpl(CounterPageStateResting _value,
      $Res Function(CounterPageStateResting) _then)
      : super(_value, (v) => _then(v as CounterPageStateResting));

  @override
  CounterPageStateResting get _value => super._value as CounterPageStateResting;

  @override
  $Res call({
    Object workTime = freezed,
    Object restTime = freezed,
    Object repetitions = freezed,
  }) {
    return _then(CounterPageStateResting(
      workTime == freezed ? _value.workTime : workTime as int,
      restTime == freezed ? _value.restTime : restTime as int,
      repetitions == freezed ? _value.repetitions : repetitions as int,
    ));
  }
}

/// @nodoc
class _$CounterPageStateResting implements CounterPageStateResting {
  _$CounterPageStateResting(this.workTime, this.restTime, this.repetitions)
      : assert(workTime != null),
        assert(restTime != null),
        assert(repetitions != null);

  @override
  final int workTime;
  @override
  final int restTime;
  @override
  final int repetitions;

  @override
  String toString() {
    return 'CounterPageState.resting(workTime: $workTime, restTime: $restTime, repetitions: $repetitions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CounterPageStateResting &&
            (identical(other.workTime, workTime) ||
                const DeepCollectionEquality()
                    .equals(other.workTime, workTime)) &&
            (identical(other.restTime, restTime) ||
                const DeepCollectionEquality()
                    .equals(other.restTime, restTime)) &&
            (identical(other.repetitions, repetitions) ||
                const DeepCollectionEquality()
                    .equals(other.repetitions, repetitions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workTime) ^
      const DeepCollectionEquality().hash(restTime) ^
      const DeepCollectionEquality().hash(repetitions);

  @JsonKey(ignore: true)
  @override
  $CounterPageStateRestingCopyWith<CounterPageStateResting> get copyWith =>
      _$CounterPageStateRestingCopyWithImpl<CounterPageStateResting>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult playing(int workTime, int restTime, int repetitions),
    @required TResult resting(int workTime, int restTime, int repetitions),
    @required TResult finished(),
  }) {
    assert(playing != null);
    assert(resting != null);
    assert(finished != null);
    return resting(workTime, restTime, repetitions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult playing(int workTime, int restTime, int repetitions),
    TResult resting(int workTime, int restTime, int repetitions),
    TResult finished(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resting != null) {
      return resting(workTime, restTime, repetitions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult playing(CounterPageStatePlaying value),
    @required TResult resting(CounterPageStateResting value),
    @required TResult finished(CounterPageStateFinished value),
  }) {
    assert(playing != null);
    assert(resting != null);
    assert(finished != null);
    return resting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playing(CounterPageStatePlaying value),
    TResult resting(CounterPageStateResting value),
    TResult finished(CounterPageStateFinished value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resting != null) {
      return resting(this);
    }
    return orElse();
  }
}

abstract class CounterPageStateResting implements CounterPageState {
  factory CounterPageStateResting(int workTime, int restTime, int repetitions) =
      _$CounterPageStateResting;

  int get workTime;
  int get restTime;
  int get repetitions;
  @JsonKey(ignore: true)
  $CounterPageStateRestingCopyWith<CounterPageStateResting> get copyWith;
}

/// @nodoc
abstract class $CounterPageStateFinishedCopyWith<$Res> {
  factory $CounterPageStateFinishedCopyWith(CounterPageStateFinished value,
          $Res Function(CounterPageStateFinished) then) =
      _$CounterPageStateFinishedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CounterPageStateFinishedCopyWithImpl<$Res>
    extends _$CounterPageStateCopyWithImpl<$Res>
    implements $CounterPageStateFinishedCopyWith<$Res> {
  _$CounterPageStateFinishedCopyWithImpl(CounterPageStateFinished _value,
      $Res Function(CounterPageStateFinished) _then)
      : super(_value, (v) => _then(v as CounterPageStateFinished));

  @override
  CounterPageStateFinished get _value =>
      super._value as CounterPageStateFinished;
}

/// @nodoc
class _$CounterPageStateFinished implements CounterPageStateFinished {
  _$CounterPageStateFinished();

  @override
  String toString() {
    return 'CounterPageState.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CounterPageStateFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult playing(int workTime, int restTime, int repetitions),
    @required TResult resting(int workTime, int restTime, int repetitions),
    @required TResult finished(),
  }) {
    assert(playing != null);
    assert(resting != null);
    assert(finished != null);
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult playing(int workTime, int restTime, int repetitions),
    TResult resting(int workTime, int restTime, int repetitions),
    TResult finished(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult playing(CounterPageStatePlaying value),
    @required TResult resting(CounterPageStateResting value),
    @required TResult finished(CounterPageStateFinished value),
  }) {
    assert(playing != null);
    assert(resting != null);
    assert(finished != null);
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playing(CounterPageStatePlaying value),
    TResult resting(CounterPageStateResting value),
    TResult finished(CounterPageStateFinished value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class CounterPageStateFinished implements CounterPageState {
  factory CounterPageStateFinished() = _$CounterPageStateFinished;
}
