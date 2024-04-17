// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_snack_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSnackBar {
  String get message => throw _privateConstructorUsedError;
  Color? get backgroundColor => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppSnackBarCopyWith<AppSnackBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSnackBarCopyWith<$Res> {
  factory $AppSnackBarCopyWith(
          AppSnackBar value, $Res Function(AppSnackBar) then) =
      _$AppSnackBarCopyWithImpl<$Res, AppSnackBar>;
  @useResult
  $Res call({String message, Color? backgroundColor, Duration duration});
}

/// @nodoc
class _$AppSnackBarCopyWithImpl<$Res, $Val extends AppSnackBar>
    implements $AppSnackBarCopyWith<$Res> {
  _$AppSnackBarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? backgroundColor = freezed,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSnackBarImplCopyWith<$Res>
    implements $AppSnackBarCopyWith<$Res> {
  factory _$$AppSnackBarImplCopyWith(
          _$AppSnackBarImpl value, $Res Function(_$AppSnackBarImpl) then) =
      __$$AppSnackBarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Color? backgroundColor, Duration duration});
}

/// @nodoc
class __$$AppSnackBarImplCopyWithImpl<$Res>
    extends _$AppSnackBarCopyWithImpl<$Res, _$AppSnackBarImpl>
    implements _$$AppSnackBarImplCopyWith<$Res> {
  __$$AppSnackBarImplCopyWithImpl(
      _$AppSnackBarImpl _value, $Res Function(_$AppSnackBarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? backgroundColor = freezed,
    Object? duration = null,
  }) {
    return _then(_$AppSnackBarImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$AppSnackBarImpl implements _AppSnackBar {
  const _$AppSnackBarImpl(
      {required this.message,
      this.backgroundColor = null,
      this.duration = const Duration(seconds: 5)});

  @override
  final String message;
  @override
  @JsonKey()
  final Color? backgroundColor;
  @override
  @JsonKey()
  final Duration duration;

  @override
  String toString() {
    return 'AppSnackBar(message: $message, backgroundColor: $backgroundColor, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSnackBarImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, backgroundColor, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSnackBarImplCopyWith<_$AppSnackBarImpl> get copyWith =>
      __$$AppSnackBarImplCopyWithImpl<_$AppSnackBarImpl>(this, _$identity);
}

abstract class _AppSnackBar implements AppSnackBar {
  const factory _AppSnackBar(
      {required final String message,
      final Color? backgroundColor,
      final Duration duration}) = _$AppSnackBarImpl;

  @override
  String get message;
  @override
  Color? get backgroundColor;
  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$AppSnackBarImplCopyWith<_$AppSnackBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
