// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoteImpl _$$NoteImplFromJson(Map<String, dynamic> json) => _$NoteImpl(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String?,
      description: json['description'] as String?,
      date_time: DateTime.parse(json['date_time'] as String),
      time: json['time'] as String,
    );

Map<String, dynamic> _$$NoteImplToJson(_$NoteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date_time': instance.date_time.toIso8601String(),
      'time': instance.time,
    };
