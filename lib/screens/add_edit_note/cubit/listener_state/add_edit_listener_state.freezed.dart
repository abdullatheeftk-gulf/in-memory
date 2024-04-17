// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_edit_listener_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddEditListenerState {
  AppSnackBar? get appSnackBar => throw _privateConstructorUsedError;
  String? get navigateToRoute => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddEditListenerStateCopyWith<AddEditListenerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEditListenerStateCopyWith<$Res> {
  factory $AddEditListenerStateCopyWith(AddEditListenerState value,
          $Res Function(AddEditListenerState) then) =
      _$AddEditListenerStateCopyWithImpl<$Res, AddEditListenerState>;
  @useResult
  $Res call({AppSnackBar? appSnackBar, String? navigateToRoute});

  $AppSnackBarCopyWith<$Res>? get appSnackBar;
}

/// @nodoc
class _$AddEditListenerStateCopyWithImpl<$Res,
        $Val extends AddEditListenerState>
    implements $AddEditListenerStateCopyWith<$Res> {
  _$AddEditListenerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSnackBar = freezed,
    Object? navigateToRoute = freezed,
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
abstract class _$$AddEditListenerStateImplCopyWith<$Res>
    implements $AddEditListenerStateCopyWith<$Res> {
  factory _$$AddEditListenerStateImplCopyWith(_$AddEditListenerStateImpl value,
          $Res Function(_$AddEditListenerStateImpl) then) =
      __$$AddEditListenerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSnackBar? appSnackBar, String? navigateToRoute});

  @override
  $AppSnackBarCopyWith<$Res>? get appSnackBar;
}

/// @nodoc
class __$$AddEditListenerStateImplCopyWithImpl<$Res>
    extends _$AddEditListenerStateCopyWithImpl<$Res, _$AddEditListenerStateImpl>
    implements _$$AddEditListenerStateImplCopyWith<$Res> {
  __$$AddEditListenerStateImplCopyWithImpl(_$AddEditListenerStateImpl _value,
      $Res Function(_$AddEditListenerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSnackBar = freezed,
    Object? navigateToRoute = freezed,
  }) {
    return _then(_$AddEditListenerStateImpl(
      appSnackBar: freezed == appSnackBar
          ? _value.appSnackBar
          : appSnackBar // ignore: cast_nullable_to_non_nullable
              as AppSnackBar?,
      navigateToRoute: freezed == navigateToRoute
          ? _value.navigateToRoute
          : navigateToRoute // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddEditListenerStateImpl implements _AddEditListenerState {
  const _$AddEditListenerStateImpl(
      {this.appSnackBar = null, this.navigateToRoute = null});

  @override
  @JsonKey()
  final AppSnackBar? appSnackBar;
  @override
  @JsonKey()
  final String? navigateToRoute;

  @override
  String toString() {
    return 'AddEditListenerState(appSnackBar: $appSnackBar, navigateToRoute: $navigateToRoute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEditListenerStateImpl &&
            (identical(other.appSnackBar, appSnackBar) ||
                other.appSnackBar == appSnackBar) &&
            (identical(other.navigateToRoute, navigateToRoute) ||
                other.navigateToRoute == navigateToRoute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appSnackBar, navigateToRoute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEditListenerStateImplCopyWith<_$AddEditListenerStateImpl>
      get copyWith =>
          __$$AddEditListenerStateImplCopyWithImpl<_$AddEditListenerStateImpl>(
              this, _$identity);
}

abstract class _AddEditListenerState implements AddEditListenerState {
  const factory _AddEditListenerState(
      {final AppSnackBar? appSnackBar,
      final String? navigateToRoute}) = _$AddEditListenerStateImpl;

  @override
  AppSnackBar? get appSnackBar;
  @override
  String? get navigateToRoute;
  @override
  @JsonKey(ignore: true)
  _$$AddEditListenerStateImplCopyWith<_$AddEditListenerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
