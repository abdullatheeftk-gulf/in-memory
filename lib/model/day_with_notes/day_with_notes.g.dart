// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_with_notes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DayWithNotesImpl _$$DayWithNotesImplFromJson(Map<String, dynamic> json) =>
    _$DayWithNotesImpl(
      id: json['id'] as int,
      date_time: DateTime.parse(json['date_time'] as String),
      time: json['time'] as String,
      notes: (json['notes'] as List<dynamic>)
          .map((e) => Note.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DayWithNotesImplToJson(_$DayWithNotesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_time': instance.date_time.toIso8601String(),
      'time': instance.time,
      'notes': instance.notes,
    };
