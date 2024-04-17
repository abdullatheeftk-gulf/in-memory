// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataError _$DataErrorFromJson(Map<String, dynamic> json) {
  return _DataError.fromJson(json);
}

/// @nodoc
mixin _$DataError {
  String get errorMessage => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataErrorCopyWith<DataError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataErrorCopyWith<$Res> {
  factory $DataErrorCopyWith(DataError value, $Res Function(DataError) then) =
      _$DataErrorCopyWithImpl<$Res, DataError>;
  @useResult
  $Res call({String errorMessage, int? code});
}

/// @nodoc
class _$DataErrorCopyWithImpl<$Res, $Val extends DataError>
    implements $DataErrorCopyWith<$Res> {
  _$DataErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataErrorImplCopyWith<$Res>
    implements $DataErrorCopyWith<$Res> {
  factory _$$DataErrorImplCopyWith(
          _$DataErrorImpl value, $Res Function(_$DataErrorImpl) then) =
      __$$DataErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String errorMessage, int? code});
}

/// @nodoc
class __$$DataErrorImplCopyWithImpl<$Res>
    extends _$DataErrorCopyWithImpl<$Res, _$DataErrorImpl>
    implements _$$DataErrorImplCopyWith<$Res> {
  __$$DataErrorImplCopyWithImpl(
      _$DataErrorImpl _value, $Res Function(_$DataErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? code = freezed,
  }) {
    return _then(_$DataErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataErrorImpl implements _DataError {
  const _$DataErrorImpl({required this.errorMessage, this.code = null});

  factory _$DataErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataErrorImplFromJson(json);

  @override
  final String errorMessage;
  @override
  @JsonKey()
  final int? code;

  @override
  String toString() {
    return 'DataError(errorMessage: $errorMessage, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataErrorImplCopyWith<_$DataErrorImpl> get copyWith =>
      __$$DataErrorImplCopyWithImpl<_$DataErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataErrorImplToJson(
      this,
    );
  }
}

abstract class _DataError implements DataError {
  const factory _DataError(
      {required final String errorMessage, final int? code}) = _$DataErrorImpl;

  factory _DataError.fromJson(Map<String, dynamic> json) =
      _$DataErrorImpl.fromJson;

  @override
  String get errorMessage;
  @override
  int? get code;
  @override
  @JsonKey(ignore: true)
  _$$DataErrorImplCopyWith<_$DataErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
