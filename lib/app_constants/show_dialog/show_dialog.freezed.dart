// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_dialog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowDialog<T> {
  T get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowDialogCopyWith<T, ShowDialog<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowDialogCopyWith<T, $Res> {
  factory $ShowDialogCopyWith(
          ShowDialog<T> value, $Res Function(ShowDialog<T>) then) =
      _$ShowDialogCopyWithImpl<T, $Res, ShowDialog<T>>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class _$ShowDialogCopyWithImpl<T, $Res, $Val extends ShowDialog<T>>
    implements $ShowDialogCopyWith<T, $Res> {
  _$ShowDialogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowDialogImplCopyWith<T, $Res>
    implements $ShowDialogCopyWith<T, $Res> {
  factory _$$ShowDialogImplCopyWith(
          _$ShowDialogImpl<T> value, $Res Function(_$ShowDialogImpl<T>) then) =
      __$$ShowDialogImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$ShowDialogImplCopyWithImpl<T, $Res>
    extends _$ShowDialogCopyWithImpl<T, $Res, _$ShowDialogImpl<T>>
    implements _$$ShowDialogImplCopyWith<T, $Res> {
  __$$ShowDialogImplCopyWithImpl(
      _$ShowDialogImpl<T> _value, $Res Function(_$ShowDialogImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ShowDialogImpl<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShowDialogImpl<T> implements _ShowDialog<T> {
  const _$ShowDialogImpl({required this.value});

  @override
  final T value;

  @override
  String toString() {
    return 'ShowDialog<$T>(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDialogImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowDialogImplCopyWith<T, _$ShowDialogImpl<T>> get copyWith =>
      __$$ShowDialogImplCopyWithImpl<T, _$ShowDialogImpl<T>>(this, _$identity);
}

abstract class _ShowDialog<T> implements ShowDialog<T> {
  const factory _ShowDialog({required final T value}) = _$ShowDialogImpl<T>;

  @override
  T get value;
  @override
  @JsonKey(ignore: true)
  _$$ShowDialogImplCopyWith<T, _$ShowDialogImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
