// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_listener_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordListenerState {
  AppSnackBar? get appSnackBar => throw _privateConstructorUsedError;
  String? get navigate => throw _privateConstructorUsedError;
  ShowDialog<dynamic>? get showSuccessDialog =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordListenerStateCopyWith<ForgotPasswordListenerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordListenerStateCopyWith<$Res> {
  factory $ForgotPasswordListenerStateCopyWith(
          ForgotPasswordListenerState value,
          $Res Function(ForgotPasswordListenerState) then) =
      _$ForgotPasswordListenerStateCopyWithImpl<$Res,
          ForgotPasswordListenerState>;
  @useResult
  $Res call(
      {AppSnackBar? appSnackBar,
      String? navigate,
      ShowDialog<dynamic>? showSuccessDialog});

  $AppSnackBarCopyWith<$Res>? get appSnackBar;
  $ShowDialogCopyWith<dynamic, $Res>? get showSuccessDialog;
}

/// @nodoc
class _$ForgotPasswordListenerStateCopyWithImpl<$Res,
        $Val extends ForgotPasswordListenerState>
    implements $ForgotPasswordListenerStateCopyWith<$Res> {
  _$ForgotPasswordListenerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSnackBar = freezed,
    Object? navigate = freezed,
    Object? showSuccessDialog = freezed,
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
      showSuccessDialog: freezed == showSuccessDialog
          ? _value.showSuccessDialog
          : showSuccessDialog // ignore: cast_nullable_to_non_nullable
              as ShowDialog<dynamic>?,
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

  @override
  @pragma('vm:prefer-inline')
  $ShowDialogCopyWith<dynamic, $Res>? get showSuccessDialog {
    if (_value.showSuccessDialog == null) {
      return null;
    }

    return $ShowDialogCopyWith<dynamic, $Res>(_value.showSuccessDialog!,
        (value) {
      return _then(_value.copyWith(showSuccessDialog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForgotPasswordListenerStateImplCopyWith<$Res>
    implements $ForgotPasswordListenerStateCopyWith<$Res> {
  factory _$$ForgotPasswordListenerStateImplCopyWith(
          _$ForgotPasswordListenerStateImpl value,
          $Res Function(_$ForgotPasswordListenerStateImpl) then) =
      __$$ForgotPasswordListenerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppSnackBar? appSnackBar,
      String? navigate,
      ShowDialog<dynamic>? showSuccessDialog});

  @override
  $AppSnackBarCopyWith<$Res>? get appSnackBar;
  @override
  $ShowDialogCopyWith<dynamic, $Res>? get showSuccessDialog;
}

/// @nodoc
class __$$ForgotPasswordListenerStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordListenerStateCopyWithImpl<$Res,
        _$ForgotPasswordListenerStateImpl>
    implements _$$ForgotPasswordListenerStateImplCopyWith<$Res> {
  __$$ForgotPasswordListenerStateImplCopyWithImpl(
      _$ForgotPasswordListenerStateImpl _value,
      $Res Function(_$ForgotPasswordListenerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSnackBar = freezed,
    Object? navigate = freezed,
    Object? showSuccessDialog = freezed,
  }) {
    return _then(_$ForgotPasswordListenerStateImpl(
      appSnackBar: freezed == appSnackBar
          ? _value.appSnackBar
          : appSnackBar // ignore: cast_nullable_to_non_nullable
              as AppSnackBar?,
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as String?,
      showSuccessDialog: freezed == showSuccessDialog
          ? _value.showSuccessDialog
          : showSuccessDialog // ignore: cast_nullable_to_non_nullable
              as ShowDialog<dynamic>?,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordListenerStateImpl
    implements _ForgotPasswordListenerState {
  const _$ForgotPasswordListenerStateImpl(
      {this.appSnackBar = null,
      this.navigate = null,
      this.showSuccessDialog = null});

  @override
  @JsonKey()
  final AppSnackBar? appSnackBar;
  @override
  @JsonKey()
  final String? navigate;
  @override
  @JsonKey()
  final ShowDialog<dynamic>? showSuccessDialog;

  @override
  String toString() {
    return 'ForgotPasswordListenerState(appSnackBar: $appSnackBar, navigate: $navigate, showSuccessDialog: $showSuccessDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordListenerStateImpl &&
            (identical(other.appSnackBar, appSnackBar) ||
                other.appSnackBar == appSnackBar) &&
            (identical(other.navigate, navigate) ||
                other.navigate == navigate) &&
            (identical(other.showSuccessDialog, showSuccessDialog) ||
                other.showSuccessDialog == showSuccessDialog));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appSnackBar, navigate, showSuccessDialog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordListenerStateImplCopyWith<_$ForgotPasswordListenerStateImpl>
      get copyWith => __$$ForgotPasswordListenerStateImplCopyWithImpl<
          _$ForgotPasswordListenerStateImpl>(this, _$identity);
}

abstract class _ForgotPasswordListenerState
    implements ForgotPasswordListenerState {
  const factory _ForgotPasswordListenerState(
          {final AppSnackBar? appSnackBar,
          final String? navigate,
          final ShowDialog<dynamic>? showSuccessDialog}) =
      _$ForgotPasswordListenerStateImpl;

  @override
  AppSnackBar? get appSnackBar;
  @override
  String? get navigate;
  @override
  ShowDialog<dynamic>? get showSuccessDialog;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordListenerStateImplCopyWith<_$ForgotPasswordListenerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
