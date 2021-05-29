// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'contact_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ContactPageStateTearOff {
  const _$ContactPageStateTearOff();

// ignore: unused_element
  ContactPageStateLoading loading() {
    return ContactPageStateLoading();
  }
}

/// @nodoc
// ignore: unused_element
const $ContactPageState = _$ContactPageStateTearOff();

/// @nodoc
mixin _$ContactPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loading(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loading(ContactPageStateLoading value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(ContactPageStateLoading value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ContactPageStateCopyWith<$Res> {
  factory $ContactPageStateCopyWith(
          ContactPageState value, $Res Function(ContactPageState) then) =
      _$ContactPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactPageStateCopyWithImpl<$Res>
    implements $ContactPageStateCopyWith<$Res> {
  _$ContactPageStateCopyWithImpl(this._value, this._then);

  final ContactPageState _value;
  // ignore: unused_field
  final $Res Function(ContactPageState) _then;
}

/// @nodoc
abstract class $ContactPageStateLoadingCopyWith<$Res> {
  factory $ContactPageStateLoadingCopyWith(ContactPageStateLoading value,
          $Res Function(ContactPageStateLoading) then) =
      _$ContactPageStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactPageStateLoadingCopyWithImpl<$Res>
    extends _$ContactPageStateCopyWithImpl<$Res>
    implements $ContactPageStateLoadingCopyWith<$Res> {
  _$ContactPageStateLoadingCopyWithImpl(ContactPageStateLoading _value,
      $Res Function(ContactPageStateLoading) _then)
      : super(_value, (v) => _then(v as ContactPageStateLoading));

  @override
  ContactPageStateLoading get _value => super._value as ContactPageStateLoading;
}

/// @nodoc
class _$ContactPageStateLoading
    with DiagnosticableTreeMixin
    implements ContactPageStateLoading {
  _$ContactPageStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ContactPageState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ContactPageState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ContactPageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loading(),
  }) {
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
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
    @required TResult loading(ContactPageStateLoading value),
  }) {
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loading(ContactPageStateLoading value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ContactPageStateLoading implements ContactPageState {
  factory ContactPageStateLoading() = _$ContactPageStateLoading;
}
