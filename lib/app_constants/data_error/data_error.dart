import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_error.freezed.dart';
part 'data_error.g.dart';

@freezed
class DataError with _$DataError {

  const factory DataError({
    required String errorMessage,
    @Default(null) int? code
  }) = _DataError;

  factory DataError.fromJson(Map<String, dynamic> json) => _$DataErrorFromJson(json);
}