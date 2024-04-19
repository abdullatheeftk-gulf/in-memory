// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_build_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpBuildState {
  bool get showProgressBar => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpBuildStateCopyWith<SignUpBuildState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpBuildStateCopyWith<$Res> {
  factory $SignUpBuildStateCopyWith(
          SignUpBuildState value, $Res Function(SignUpBuildState) then) =
      _$SignUpBuildStateCopyWithImpl<$Res, SignUpBuildState>;
  @useResult
  $Res call({bool showProgressBar, String? errorMessage});
}

/// @nodoc
class _$SignUpBuildStateCopyWithImpl<$Res, $Val extends SignUpBuildState>
    implements $SignUpBuildStateCopyWith<$Res> {
  _$SignUpBuildStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      showProgressBar: null == showProgressBar
          ? _value.showProgressBar
          : showProgressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpBuildStateImplCopyWith<$Res>
    implements $SignUpBuildStateCopyWith<$Res> {
  factory _$$SignUpBuildStateImplCopyWith(_$SignUpBuildStateImpl value,
          $Res Function(_$SignUpBuildStateImpl) then) =
      __$$SignUpBuildStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showProgressBar, String? errorMessage});
}

/// @nodoc
class __$$SignUpBuildStateImplCopyWithImpl<$Res>
    extends _$SignUpBuildStateCopyWithImpl<$Res, _$SignUpBuildStateImpl>
    implements _$$SignUpBuildStateImplCopyWith<$Res> {
  __$$SignUpBuildStateImplCopyWithImpl(_$SignUpBuildStateImpl _value,
      $Res Function(_$SignUpBuildStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SignUpBuildStateImpl(
      showProgressBar: null == showProgressBar
          ? _value.showProgressBar
          : showProgressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignUpBuildStateImpl implements _SignUpBuildState {
  const _$SignUpBuildStateImpl(
      {this.showProgressBar = false, this.errorMessage = null});

  @override
  @JsonKey()
  final bool showProgressBar;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'SignUpBuildState(showProgressBar: $showProgressBar, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpBuildStateImpl &&
            (identical(other.showProgressBar, showProgressBar) ||
                other.showProgressBar == showProgressBar) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showProgressBar, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpBuildStateImplCopyWith<_$SignUpBuildStateImpl> get copyWith =>
      __$$SignUpBuildStateImplCopyWithImpl<_$SignUpBuildStateImpl>(
          this, _$identity);
}

abstract class _SignUpBuildState implements SignUpBuildState {
  const factory _SignUpBuildState(
      {final bool showProgressBar,
      final String? errorMessage}) = _$SignUpBuildStateImpl;

  @override
  bool get showProgressBar;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SignUpBuildStateImplCopyWith<_$SignUpBuildStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
