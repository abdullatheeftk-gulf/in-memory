import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_memory/model/Note/note.dart';

part 'day_with_notes.freezed.dart';
part 'day_with_notes.g.dart';

@freezed
class DayWithNotes with _$DayWithNotes {

  factory DayWithNotes({
    required int id,
    required DateTime date_time,
    required String time,
    required List<Note> notes,
  }) = _DayWithNotes;

  factory DayWithNotes.fromJson(Map<String, dynamic> json) => _$DayWithNotesFromJson(json);
}