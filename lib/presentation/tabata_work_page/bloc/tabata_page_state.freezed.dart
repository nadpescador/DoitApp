// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tabata_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TabataPageStateTearOff {
  const _$TabataPageStateTearOff();

// ignore: unused_element
  TabataPageStatePlaying playing(int workTime, int restTime, int repetitions) {
    return TabataPageStatePlaying(
      workTime,
      restTime,
      repetitions,
    );
  }

// ignore: unused_element
  TabataPageStateResting resting(int workTime, int restTime, int repetitions) {
    return TabataPageStateResting(
      workTime,
      restTime,
      repetitions,
    );
  }

// ignore: unused_element
  TabataPageStateFinished finished() {
    return TabataPageStateFinished();
  }
}

/// @nodoc
// ignore: unused_element
const $TabataPageState = _$TabataPageStateTearOff();

/// @nodoc
mixin _$TabataPageState {
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
    @required TResult playing(TabataPageStatePlaying value),
    @required TResult resting(TabataPageStateResting value),
    @required TResult finished(TabataPageStateFinished value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playing(TabataPageStatePlaying value),
    TResult resting(TabataPageStateResting value),
    TResult finished(TabataPageStateFinished value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TabataPageStateCopyWith<$Res> {
  factory $TabataPageStateCopyWith(
          TabataPageState value, $Res Function(TabataPageState) then) =
      _$TabataPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TabataPageStateCopyWithImpl<$Res>
    implements $TabataPageStateCopyWith<$Res> {
  _$TabataPageStateCopyWithImpl(this._value, this._then);

  final TabataPageState _value;
  // ignore: unused_field
  final $Res Function(TabataPageState) _then;
}

/// @nodoc
abstract class $TabataPageStatePlayingCopyWith<$Res> {
  factory $TabataPageStatePlayingCopyWith(TabataPageStatePlaying value,
          $Res Function(TabataPageStatePlaying) then) =
      _$TabataPageStatePlayingCopyWithImpl<$Res>;
  $Res call({int workTime, int restTime, int repetitions});
}

/// @nodoc
class _$TabataPageStatePlayingCopyWithImpl<$Res>
    extends _$TabataPageStateCopyWithImpl<$Res>
    implements $TabataPageStatePlayingCopyWith<$Res> {
  _$TabataPageStatePlayingCopyWithImpl(TabataPageStatePlaying _value,
      $Res Function(TabataPageStatePlaying) _then)
      : super(_value, (v) => _then(v as TabataPageStatePlaying));

  @override
  TabataPageStatePlaying get _value => super._value as TabataPageStatePlaying;

  @override
  $Res call({
    Object workTime = freezed,
    Object restTime = freezed,
    Object repetitions = freezed,
  }) {
    return _then(TabataPageStatePlaying(
      workTime == freezed ? _value.workTime : workTime as int,
      restTime == freezed ? _value.restTime : restTime as int,
      repetitions == freezed ? _value.repetitions : repetitions as int,
    ));
  }
}

/// @nodoc
class _$TabataPageStatePlaying
    with DiagnosticableTreeMixin
    implements TabataPageStatePlaying {
  _$TabataPageStatePlaying(this.workTime, this.restTime, this.repetitions)
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TabataPageState.playing(workTime: $workTime, restTime: $restTime, repetitions: $repetitions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TabataPageState.playing'))
      ..add(DiagnosticsProperty('workTime', workTime))
      ..add(DiagnosticsProperty('restTime', restTime))
      ..add(DiagnosticsProperty('repetitions', repetitions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TabataPageStatePlaying &&
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
  $TabataPageStatePlayingCopyWith<TabataPageStatePlaying> get copyWith =>
      _$TabataPageStatePlayingCopyWithImpl<TabataPageStatePlaying>(
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
    @required TResult playing(TabataPageStatePlaying value),
    @required TResult resting(TabataPageStateResting value),
    @required TResult finished(TabataPageStateFinished value),
  }) {
    assert(playing != null);
    assert(resting != null);
    assert(finished != null);
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playing(TabataPageStatePlaying value),
    TResult resting(TabataPageStateResting value),
    TResult finished(TabataPageStateFinished value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class TabataPageStatePlaying implements TabataPageState {
  factory TabataPageStatePlaying(int workTime, int restTime, int repetitions) =
      _$TabataPageStatePlaying;

  int get workTime;
  int get restTime;
  int get repetitions;
  @JsonKey(ignore: true)
  $TabataPageStatePlayingCopyWith<TabataPageStatePlaying> get copyWith;
}

/// @nodoc
abstract class $TabataPageStateRestingCopyWith<$Res> {
  factory $TabataPageStateRestingCopyWith(TabataPageStateResting value,
          $Res Function(TabataPageStateResting) then) =
      _$TabataPageStateRestingCopyWithImpl<$Res>;
  $Res call({int workTime, int restTime, int repetitions});
}

/// @nodoc
class _$TabataPageStateRestingCopyWithImpl<$Res>
    extends _$TabataPageStateCopyWithImpl<$Res>
    implements $TabataPageStateRestingCopyWith<$Res> {
  _$TabataPageStateRestingCopyWithImpl(TabataPageStateResting _value,
      $Res Function(TabataPageStateResting) _then)
      : super(_value, (v) => _then(v as TabataPageStateResting));

  @override
  TabataPageStateResting get _value => super._value as TabataPageStateResting;

  @override
  $Res call({
    Object workTime = freezed,
    Object restTime = freezed,
    Object repetitions = freezed,
  }) {
    return _then(TabataPageStateResting(
      workTime == freezed ? _value.workTime : workTime as int,
      restTime == freezed ? _value.restTime : restTime as int,
      repetitions == freezed ? _value.repetitions : repetitions as int,
    ));
  }
}

/// @nodoc
class _$TabataPageStateResting
    with DiagnosticableTreeMixin
    implements TabataPageStateResting {
  _$TabataPageStateResting(this.workTime, this.restTime, this.repetitions)
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TabataPageState.resting(workTime: $workTime, restTime: $restTime, repetitions: $repetitions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TabataPageState.resting'))
      ..add(DiagnosticsProperty('workTime', workTime))
      ..add(DiagnosticsProperty('restTime', restTime))
      ..add(DiagnosticsProperty('repetitions', repetitions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TabataPageStateResting &&
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
  $TabataPageStateRestingCopyWith<TabataPageStateResting> get copyWith =>
      _$TabataPageStateRestingCopyWithImpl<TabataPageStateResting>(
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
    @required TResult playing(TabataPageStatePlaying value),
    @required TResult resting(TabataPageStateResting value),
    @required TResult finished(TabataPageStateFinished value),
  }) {
    assert(playing != null);
    assert(resting != null);
    assert(finished != null);
    return resting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playing(TabataPageStatePlaying value),
    TResult resting(TabataPageStateResting value),
    TResult finished(TabataPageStateFinished value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resting != null) {
      return resting(this);
    }
    return orElse();
  }
}

abstract class TabataPageStateResting implements TabataPageState {
  factory TabataPageStateResting(int workTime, int restTime, int repetitions) =
      _$TabataPageStateResting;

  int get workTime;
  int get restTime;
  int get repetitions;
  @JsonKey(ignore: true)
  $TabataPageStateRestingCopyWith<TabataPageStateResting> get copyWith;
}

/// @nodoc
abstract class $TabataPageStateFinishedCopyWith<$Res> {
  factory $TabataPageStateFinishedCopyWith(TabataPageStateFinished value,
          $Res Function(TabataPageStateFinished) then) =
      _$TabataPageStateFinishedCopyWithImpl<$Res>;
}

/// @nodoc
class _$TabataPageStateFinishedCopyWithImpl<$Res>
    extends _$TabataPageStateCopyWithImpl<$Res>
    implements $TabataPageStateFinishedCopyWith<$Res> {
  _$TabataPageStateFinishedCopyWithImpl(TabataPageStateFinished _value,
      $Res Function(TabataPageStateFinished) _then)
      : super(_value, (v) => _then(v as TabataPageStateFinished));

  @override
  TabataPageStateFinished get _value => super._value as TabataPageStateFinished;
}

/// @nodoc
class _$TabataPageStateFinished
    with DiagnosticableTreeMixin
    implements TabataPageStateFinished {
  _$TabataPageStateFinished();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TabataPageState.finished()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TabataPageState.finished'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TabataPageStateFinished);
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
    @required TResult playing(TabataPageStatePlaying value),
    @required TResult resting(TabataPageStateResting value),
    @required TResult finished(TabataPageStateFinished value),
  }) {
    assert(playing != null);
    assert(resting != null);
    assert(finished != null);
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult playing(TabataPageStatePlaying value),
    TResult resting(TabataPageStateResting value),
    TResult finished(TabataPageStateFinished value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class TabataPageStateFinished implements TabataPageState {
  factory TabataPageStateFinished() = _$TabataPageStateFinished;
}
