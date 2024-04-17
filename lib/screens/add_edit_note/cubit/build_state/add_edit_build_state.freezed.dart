// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_edit_build_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddEditBuildState<T> {
  bool get showProgressBar => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddEditBuildStateCopyWith<T, AddEditBuildState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditBuildStateCopyWith<T, $Res> {
  factory $AddEditBuildStateCopyWith(AddEditBuildState<T> value,
          $Res Function(AddEditBuildState<T>) then) =
      _$AddEditBuildStateCopyWithImpl<T, $Res, AddEditBuildState<T>>;
  @useResult
  $Res call({bool showProgressBar, T? result, String? errorMessage});
}

/// @nodoc
class _$AddEditBuildStateCopyWithImpl<T, $Res,
        $Val extends AddEditBuildState<T>>
    implements $AddEditBuildStateCopyWith<T, $Res> {
  _$AddEditBuildStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AddEditBuildStateImplCopyWith<T, $Res>
    implements $AddEditBuildStateCopyWith<T, $Res> {
  factory _$$AddEditBuildStateImplCopyWith(_$AddEditBuildStateImpl<T> value,
          $Res Function(_$AddEditBuildStateImpl<T>) then) =
      __$$AddEditBuildStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool showProgressBar, T? result, String? errorMessage});
}

/// @nodoc
class __$$AddEditBuildStateImplCopyWithImpl<T, $Res>
    extends _$AddEditBuildStateCopyWithImpl<T, $Res, _$AddEditBuildStateImpl<T>>
    implements _$$AddEditBuildStateImplCopyWith<T, $Res> {
  __$$AddEditBuildStateImplCopyWithImpl(_$AddEditBuildStateImpl<T> _value,
      $Res Function(_$AddEditBuildStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AddEditBuildStateImpl<T>(
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

class _$AddEditBuildStateImpl<T> implements _AddEditBuildState<T> {
  const _$AddEditBuildStateImpl(
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
    return 'AddEditBuildState<$T>(showProgressBar: $showProgressBar, result: $result, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEditBuildStateImpl<T> &&
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
  _$$AddEditBuildStateImplCopyWith<T, _$AddEditBuildStateImpl<T>>
      get copyWith =>
          __$$AddEditBuildStateImplCopyWithImpl<T, _$AddEditBuildStateImpl<T>>(
              this, _$identity);
}

abstract class _AddEditBuildState<T> implements AddEditBuildState<T> {
  const factory _AddEditBuildState(
      {final bool showProgressBar,
      final T? result,
      final String? errorMessage}) = _$AddEditBuildStateImpl<T>;

  @override
  bool get showProgressBar;
  @override
  T? get result;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AddEditBuildStateImplCopyWith<T, _$AddEditBuildStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
