// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataErrorImpl _$$DataErrorImplFromJson(Map<String, dynamic> json) =>
    _$DataErrorImpl(
      errorMessage: json['errorMessage'] as String,
      code: json['code'] as int? ?? null,
    );

Map<String, dynamic> _$$DataErrorImplToJson(_$DataErrorImpl instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'code': instance.code,
    };
