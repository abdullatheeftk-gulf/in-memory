// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_build_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordBuildState {
  bool get showProgressBar => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordBuildStateCopyWith<ForgotPasswordBuildState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordBuildStateCopyWith<$Res> {
  factory $ForgotPasswordBuildStateCopyWith(ForgotPasswordBuildState value,
          $Res Function(ForgotPasswordBuildState) then) =
      _$ForgotPasswordBuildStateCopyWithImpl<$Res, ForgotPasswordBuildState>;
  @useResult
  $Res call({bool showProgressBar, String? errorMessage});
}

/// @nodoc
class _$ForgotPasswordBuildStateCopyWithImpl<$Res,
        $Val extends ForgotPasswordBuildState>
    implements $ForgotPasswordBuildStateCopyWith<$Res> {
  _$ForgotPasswordBuildStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ForgotPasswordBuildStateImplCopyWith<$Res>
    implements $ForgotPasswordBuildStateCopyWith<$Res> {
  factory _$$ForgotPasswordBuildStateImplCopyWith(
          _$ForgotPasswordBuildStateImpl value,
          $Res Function(_$ForgotPasswordBuildStateImpl) then) =
      __$$ForgotPasswordBuildStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showProgressBar, String? errorMessage});
}

/// @nodoc
class __$$ForgotPasswordBuildStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordBuildStateCopyWithImpl<$Res,
        _$ForgotPasswordBuildStateImpl>
    implements _$$ForgotPasswordBuildStateImplCopyWith<$Res> {
  __$$ForgotPasswordBuildStateImplCopyWithImpl(
      _$ForgotPasswordBuildStateImpl _value,
      $Res Function(_$ForgotPasswordBuildStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ForgotPasswordBuildStateImpl(
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

class _$ForgotPasswordBuildStateImpl implements _ForgotPasswordBuildState {
  const _$ForgotPasswordBuildStateImpl(
      {this.showProgressBar = false, this.errorMessage = null});

  @override
  @JsonKey()
  final bool showProgressBar;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'ForgotPasswordBuildState(showProgressBar: $showProgressBar, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordBuildStateImpl &&
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
  _$$ForgotPasswordBuildStateImplCopyWith<_$ForgotPasswordBuildStateImpl>
      get copyWith => __$$ForgotPasswordBuildStateImplCopyWithImpl<
          _$ForgotPasswordBuildStateImpl>(this, _$identity);
}

abstract class _ForgotPasswordBuildState implements ForgotPasswordBuildState {
  const factory _ForgotPasswordBuildState(
      {final bool showProgressBar,
      final String? errorMessage}) = _$ForgotPasswordBuildStateImpl;

  @override
  bool get showProgressBar;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordBuildStateImplCopyWith<_$ForgotPasswordBuildStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
