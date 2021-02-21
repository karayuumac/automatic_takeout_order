// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _AuthState call({bool isAuthenticated = false}) {
    return _AuthState(
      isAuthenticated: isAuthenticated,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  bool get isAuthenticated;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call({bool isAuthenticated});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object isAuthenticated = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated as bool,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAuthenticated});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object isAuthenticated = freezed,
  }) {
    return _then(_AuthState(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated as bool,
    ));
  }
}

/// @nodoc
class _$_AuthState implements _AuthState {
  const _$_AuthState({this.isAuthenticated = false})
      : assert(isAuthenticated != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isAuthenticated;

  @override
  String toString() {
    return 'AuthState(isAuthenticated: $isAuthenticated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticated, isAuthenticated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAuthenticated);

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({bool isAuthenticated}) = _$_AuthState;

  @override
  bool get isAuthenticated;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith;
}
