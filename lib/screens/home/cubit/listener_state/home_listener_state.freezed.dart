// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_listener_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeListenerState {
  AppSnackBar? get appSnackBar => throw _privateConstructorUsedError;
  String? get navigateToRoute => throw _privateConstructorUsedError;
  ShowDialog<dynamic>? get showDialog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeListenerStateCopyWith<HomeListenerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeListenerStateCopyWith<$Res> {
  factory $HomeListenerStateCopyWith(
          HomeListenerState value, $Res Function(HomeListenerState) then) =
      _$HomeListenerStateCopyWithImpl<$Res, HomeListenerState>;
  @useResult
  $Res call(
      {AppSnackBar? appSnackBar,
      String? navigateToRoute,
      ShowDialog<dynamic>? showDialog});

  $AppSnackBarCopyWith<$Res>? get appSnackBar;
  $ShowDialogCopyWith<dynamic, $Res>? get showDialog;
}

/// @nodoc
class _$HomeListenerStateCopyWithImpl<$Res, $Val extends HomeListenerState>
    implements $HomeListenerStateCopyWith<$Res> {
  _$HomeListenerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSnackBar = freezed,
    Object? navigateToRoute = freezed,
    Object? showDialog = freezed,
  }) {
    return _then(_value.copyWith(
      appSnackBar: freezed == appSnackBar
          ? _value.appSnackBar
          : appSnackBar // ignore: cast_nullable_to_non_nullable
              as AppSnackBar?,
      navigateToRoute: freezed == navigateToRoute
          ? _value.navigateToRoute
          : navigateToRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      showDialog: freezed == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
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
  $ShowDialogCopyWith<dynamic, $Res>? get showDialog {
    if (_value.showDialog == null) {
      return null;
    }

    return $ShowDialogCopyWith<dynamic, $Res>(_value.showDialog!, (value) {
      return _then(_value.copyWith(showDialog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeListenerStateImplCopyWith<$Res>
    implements $HomeListenerStateCopyWith<$Res> {
  factory _$$HomeListenerStateImplCopyWith(_$HomeListenerStateImpl value,
          $Res Function(_$HomeListenerStateImpl) then) =
      __$$HomeListenerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppSnackBar? appSnackBar,
      String? navigateToRoute,
      ShowDialog<dynamic>? showDialog});

  @override
  $AppSnackBarCopyWith<$Res>? get appSnackBar;
  @override
  $ShowDialogCopyWith<dynamic, $Res>? get showDialog;
}

/// @nodoc
class __$$HomeListenerStateImplCopyWithImpl<$Res>
    extends _$HomeListenerStateCopyWithImpl<$Res, _$HomeListenerStateImpl>
    implements _$$HomeListenerStateImplCopyWith<$Res> {
  __$$HomeListenerStateImplCopyWithImpl(_$HomeListenerStateImpl _value,
      $Res Function(_$HomeListenerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSnackBar = freezed,
    Object? navigateToRoute = freezed,
    Object? showDialog = freezed,
  }) {
    return _then(_$HomeListenerStateImpl(
      appSnackBar: freezed == appSnackBar
          ? _value.appSnackBar
          : appSnackBar // ignore: cast_nullable_to_non_nullable
              as AppSnackBar?,
      navigateToRoute: freezed == navigateToRoute
          ? _value.navigateToRoute
          : navigateToRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      showDialog: freezed == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as ShowDialog<dynamic>?,
    ));
  }
}

/// @nodoc

class _$HomeListenerStateImpl implements _HomeListenerState {
  const _$HomeListenerStateImpl(
      {this.appSnackBar = null,
      this.navigateToRoute = null,
      this.showDialog = null});

  @override
  @JsonKey()
  final AppSnackBar? appSnackBar;
  @override
  @JsonKey()
  final String? navigateToRoute;
  @override
  @JsonKey()
  final ShowDialog<dynamic>? showDialog;

  @override
  String toString() {
    return 'HomeListenerState(appSnackBar: $appSnackBar, navigateToRoute: $navigateToRoute, showDialog: $showDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeListenerStateImpl &&
            (identical(other.appSnackBar, appSnackBar) ||
                other.appSnackBar == appSnackBar) &&
            (identical(other.navigateToRoute, navigateToRoute) ||
                other.navigateToRoute == navigateToRoute) &&
            (identical(other.showDialog, showDialog) ||
                other.showDialog == showDialog));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appSnackBar, navigateToRoute, showDialog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeListenerStateImplCopyWith<_$HomeListenerStateImpl> get copyWith =>
      __$$HomeListenerStateImplCopyWithImpl<_$HomeListenerStateImpl>(
          this, _$identity);
}

abstract class _HomeListenerState implements HomeListenerState {
  const factory _HomeListenerState(
      {final AppSnackBar? appSnackBar,
      final String? navigateToRoute,
      final ShowDialog<dynamic>? showDialog}) = _$HomeListenerStateImpl;

  @override
  AppSnackBar? get appSnackBar;
  @override
  String? get navigateToRoute;
  @override
  ShowDialog<dynamic>? get showDialog;
  @override
  @JsonKey(ignore: true)
  _$$HomeListenerStateImplCopyWith<_$HomeListenerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
