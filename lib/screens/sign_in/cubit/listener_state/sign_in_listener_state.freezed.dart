// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_listener_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInListenerState {
  AppSnackBar? get appSnackBar => throw _privateConstructorUsedError;
  String? get navigate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInListenerStateCopyWith<SignInListenerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInListenerStateCopyWith<$Res> {
  factory $SignInListenerStateCopyWith(
          SignInListenerState value, $Res Function(SignInListenerState) then) =
      _$SignInListenerStateCopyWithImpl<$Res, SignInListenerState>;
  @useResult
  $Res call({AppSnackBar? appSnackBar, String? navigate});

  $AppSnackBarCopyWith<$Res>? get appSnackBar;
}

/// @nodoc
class _$SignInListenerStateCopyWithImpl<$Res, $Val extends SignInListenerState>
    implements $SignInListenerStateCopyWith<$Res> {
  _$SignInListenerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSnackBar = freezed,
    Object? navigate = freezed,
  }) {
    return _then(_value.copyWith(
      appSnackBar: freezed == appSnackBar
          ? _value.appSnackBar
          : appSnackBar // ignore: cast_nullable_to_non_nullable
              as AppSnackBar?,
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppSnackBarCopyWith<$Res>? get appSnackBar {
    if (_value.appSnackBar == null) {
      return null;
    }

    return $AppSnackBarCopyWith<$Res>(_value.appSnackBar!, (value) {
      return _then(_value.copyWith(appSnackBar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInListenerStateImplCopyWith<$Res>
    implements $SignInListenerStateCopyWith<$Res> {
  factory _$$SignInListenerStateImplCopyWith(_$SignInListenerStateImpl value,
          $Res Function(_$SignInListenerStateImpl) then) =
      __$$SignInListenerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSnackBar? appSnackBar, String? navigate});

  @override
  $AppSnackBarCopyWith<$Res>? get appSnackBar;
}

/// @nodoc
class __$$SignInListenerStateImplCopyWithImpl<$Res>
    extends _$SignInListenerStateCopyWithImpl<$Res, _$SignInListenerStateImpl>
    implements _$$SignInListenerStateImplCopyWith<$Res> {
  __$$SignInListenerStateImplCopyWithImpl(_$SignInListenerStateImpl _value,
      $Res Function(_$SignInListenerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSnackBar = freezed,
    Object? navigate = freezed,
  }) {
    return _then(_$SignInListenerStateImpl(
      appSnackBar: freezed == appSnackBar
          ? _value.appSnackBar
          : appSnackBar // ignore: cast_nullable_to_non_nullable
              as AppSnackBar?,
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignInListenerStateImpl implements _SignInListenerState {
  const _$SignInListenerStateImpl(
      {this.appSnackBar = null, this.navigate = null});

  @override
  @JsonKey()
  final AppSnackBar? appSnackBar;
  @override
  @JsonKey()
  final String? navigate;

  @override
  String toString() {
    return 'SignInListenerState(appSnackBar: $appSnackBar, navigate: $navigate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInListenerStateImpl &&
            (identical(other.appSnackBar, appSnackBar) ||
                other.appSnackBar == appSnackBar) &&
            (identical(other.navigate, navigate) ||
                other.navigate == navigate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appSnackBar, navigate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInListenerStateImplCopyWith<_$SignInListenerStateImpl> get copyWith =>
      __$$SignInListenerStateImplCopyWithImpl<_$SignInListenerStateImpl>(
          this, _$identity);
}

abstract class _SignInListenerState implements SignInListenerState {
  const factory _SignInListenerState(
      {final AppSnackBar? appSnackBar,
      final String? navigate}) = _$SignInListenerStateImpl;

  @override
  AppSnackBar? get appSnackBar;
  @override
  String? get navigate;
  @override
  @JsonKey(ignore: true)
  _$$SignInListenerStateImplCopyWith<_$SignInListenerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
