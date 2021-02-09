// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  _UserState call({bool isAuthenticated = false, String uid = ''}) {
    return _UserState(
      isAuthenticated: isAuthenticated,
      uid: uid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  bool get isAuthenticated;
  String get uid;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
  $Res call({bool isAuthenticated, String uid});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;

  @override
  $Res call({
    Object isAuthenticated = freezed,
    Object uid = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated as bool,
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
abstract class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(
          _UserState value, $Res Function(_UserState) then) =
      __$UserStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAuthenticated, String uid});
}

/// @nodoc
class __$UserStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(_UserState _value, $Res Function(_UserState) _then)
      : super(_value, (v) => _then(v as _UserState));

  @override
  _UserState get _value => super._value as _UserState;

  @override
  $Res call({
    Object isAuthenticated = freezed,
    Object uid = freezed,
  }) {
    return _then(_UserState(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated as bool,
      uid: uid == freezed ? _value.uid : uid as String,
    ));
  }
}

/// @nodoc
class _$_UserState implements _UserState {
  const _$_UserState({this.isAuthenticated = false, this.uid = ''})
      : assert(isAuthenticated != null),
        assert(uid != null);

  @JsonKey(defaultValue: false)
  @override
  final bool isAuthenticated;
  @JsonKey(defaultValue: '')
  @override
  final String uid;

  @override
  String toString() {
    return 'UserState(isAuthenticated: $isAuthenticated, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserState &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticated, isAuthenticated)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAuthenticated) ^
      const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$UserStateCopyWith<_UserState> get copyWith =>
      __$UserStateCopyWithImpl<_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState({bool isAuthenticated, String uid}) = _$_UserState;

  @override
  bool get isAuthenticated;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$UserStateCopyWith<_UserState> get copyWith;
}
