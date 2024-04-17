// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_build_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeBuildState<T> {
  bool get showProgressBar => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBuildStateCopyWith<T, HomeBuildState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBuildStateCopyWith<T, $Res> {
  factory $HomeBuildStateCopyWith(
          HomeBuildState<T> value, $Res Function(HomeBuildState<T>) then) =
      _$HomeBuildStateCopyWithImpl<T, $Res, HomeBuildState<T>>;
  @useResult
  $Res call({bool showProgressBar, T? result, String? errorMessage});
}

/// @nodoc
class _$HomeBuildStateCopyWithImpl<T, $Res, $Val extends HomeBuildState<T>>
    implements $HomeBuildStateCopyWith<T, $Res> {
  _$HomeBuildStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      showProgressBar: null == showProgressBar
          ? _value.showProgressBar
          : showProgressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeBuildStateImplCopyWith<T, $Res>
    implements $HomeBuildStateCopyWith<T, $Res> {
  factory _$$HomeBuildStateImplCopyWith(_$HomeBuildStateImpl<T> value,
          $Res Function(_$HomeBuildStateImpl<T>) then) =
      __$$HomeBuildStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool showProgressBar, T? result, String? errorMessage});
}

/// @nodoc
class __$$HomeBuildStateImplCopyWithImpl<T, $Res>
    extends _$HomeBuildStateCopyWithImpl<T, $Res, _$HomeBuildStateImpl<T>>
    implements _$$HomeBuildStateImplCopyWith<T, $Res> {
  __$$HomeBuildStateImplCopyWithImpl(_$HomeBuildStateImpl<T> _value,
      $Res Function(_$HomeBuildStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$HomeBuildStateImpl<T>(
      showProgressBar: null == showProgressBar
          ? _value.showProgressBar
          : showProgressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HomeBuildStateImpl<T> implements _HomeBuildState<T> {
  const _$HomeBuildStateImpl(
      {this.showProgressBar = false,
      this.result = null,
      this.errorMessage = null});

  @override
  @JsonKey()
  final bool showProgressBar;
  @override
  @JsonKey()
  final T? result;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'HomeBuildState<$T>(showProgressBar: $showProgressBar, result: $result, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBuildStateImpl<T> &&
            (identical(other.showProgressBar, showProgressBar) ||
                other.showProgressBar == showProgressBar) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showProgressBar,
      const DeepCollectionEquality().hash(result), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBuildStateImplCopyWith<T, _$HomeBuildStateImpl<T>> get copyWith =>
      __$$HomeBuildStateImplCopyWithImpl<T, _$HomeBuildStateImpl<T>>(
          this, _$identity);
}

abstract class _HomeBuildState<T> implements HomeBuildState<T> {
  const factory _HomeBuildState(
      {final bool showProgressBar,
      final T? result,
      final String? errorMessage}) = _$HomeBuildStateImpl<T>;

  @override
  bool get showProgressBar;
  @override
  T? get result;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$HomeBuildStateImplCopyWith<T, _$HomeBuildStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
