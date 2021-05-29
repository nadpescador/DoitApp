// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'tabata_form_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TabataFormViewModelTearOff {
  const _$TabataFormViewModelTearOff();

// ignore: unused_element
  _TabataFormViewModelBody call(
      {int workoutTime, int restingTime, int repetitions}) {
    return _TabataFormViewModelBody(
      workoutTime: workoutTime,
      restingTime: restingTime,
      repetitions: repetitions,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TabataFormViewModel = _$TabataFormViewModelTearOff();

/// @nodoc
mixin _$TabataFormViewModel {
  int get workoutTime;
  int get restingTime;
  int get repetitions;

  @JsonKey(ignore: true)
  $TabataFormViewModelCopyWith<TabataFormViewModel> get copyWith;
}

/// @nodoc
abstract class $TabataFormViewModelCopyWith<$Res> {
  factory $TabataFormViewModelCopyWith(
          TabataFormViewModel value, $Res Function(TabataFormViewModel) then) =
      _$TabataFormViewModelCopyWithImpl<$Res>;
  $Res call({int workoutTime, int restingTime, int repetitions});
}

/// @nodoc
class _$TabataFormViewModelCopyWithImpl<$Res>
    implements $TabataFormViewModelCopyWith<$Res> {
  _$TabataFormViewModelCopyWithImpl(this._value, this._then);

  final TabataFormViewModel _value;
  // ignore: unused_field
  final $Res Function(TabataFormViewModel) _then;

  @override
  $Res call({
    Object workoutTime = freezed,
    Object restingTime = freezed,
    Object repetitions = freezed,
  }) {
    return _then(_value.copyWith(
      workoutTime:
          workoutTime == freezed ? _value.workoutTime : workoutTime as int,
      restingTime:
          restingTime == freezed ? _value.restingTime : restingTime as int,
      repetitions:
          repetitions == freezed ? _value.repetitions : repetitions as int,
    ));
  }
}

/// @nodoc
abstract class _$TabataFormViewModelBodyCopyWith<$Res>
    implements $TabataFormViewModelCopyWith<$Res> {
  factory _$TabataFormViewModelBodyCopyWith(_TabataFormViewModelBody value,
          $Res Function(_TabataFormViewModelBody) then) =
      __$TabataFormViewModelBodyCopyWithImpl<$Res>;
  @override
  $Res call({int workoutTime, int restingTime, int repetitions});
}

/// @nodoc
class __$TabataFormViewModelBodyCopyWithImpl<$Res>
    extends _$TabataFormViewModelCopyWithImpl<$Res>
    implements _$TabataFormViewModelBodyCopyWith<$Res> {
  __$TabataFormViewModelBodyCopyWithImpl(_TabataFormViewModelBody _value,
      $Res Function(_TabataFormViewModelBody) _then)
      : super(_value, (v) => _then(v as _TabataFormViewModelBody));

  @override
  _TabataFormViewModelBody get _value =>
      super._value as _TabataFormViewModelBody;

  @override
  $Res call({
    Object workoutTime = freezed,
    Object restingTime = freezed,
    Object repetitions = freezed,
  }) {
    return _then(_TabataFormViewModelBody(
      workoutTime:
          workoutTime == freezed ? _value.workoutTime : workoutTime as int,
      restingTime:
          restingTime == freezed ? _value.restingTime : restingTime as int,
      repetitions:
          repetitions == freezed ? _value.repetitions : repetitions as int,
    ));
  }
}

/// @nodoc
class _$_TabataFormViewModelBody extends _TabataFormViewModelBody {
  _$_TabataFormViewModelBody(
      {this.workoutTime, this.restingTime, this.repetitions})
      : super._();

  @override
  final int workoutTime;
  @override
  final int restingTime;
  @override
  final int repetitions;

  @override
  String toString() {
    return 'TabataFormViewModel(workoutTime: $workoutTime, restingTime: $restingTime, repetitions: $repetitions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TabataFormViewModelBody &&
            (identical(other.workoutTime, workoutTime) ||
                const DeepCollectionEquality()
                    .equals(other.workoutTime, workoutTime)) &&
            (identical(other.restingTime, restingTime) ||
                const DeepCollectionEquality()
                    .equals(other.restingTime, restingTime)) &&
            (identical(other.repetitions, repetitions) ||
                const DeepCollectionEquality()
                    .equals(other.repetitions, repetitions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workoutTime) ^
      const DeepCollectionEquality().hash(restingTime) ^
      const DeepCollectionEquality().hash(repetitions);

  @JsonKey(ignore: true)
  @override
  _$TabataFormViewModelBodyCopyWith<_TabataFormViewModelBody> get copyWith =>
      __$TabataFormViewModelBodyCopyWithImpl<_TabataFormViewModelBody>(
          this, _$identity);
}

abstract class _TabataFormViewModelBody extends TabataFormViewModel {
  _TabataFormViewModelBody._() : super._();
  factory _TabataFormViewModelBody(
      {int workoutTime,
      int restingTime,
      int repetitions}) = _$_TabataFormViewModelBody;

  @override
  int get workoutTime;
  @override
  int get restingTime;
  @override
  int get repetitions;
  @override
  @JsonKey(ignore: true)
  _$TabataFormViewModelBodyCopyWith<_TabataFormViewModelBody> get copyWith;
}
