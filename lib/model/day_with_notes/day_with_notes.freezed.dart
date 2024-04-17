// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_with_notes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DayWithNotes _$DayWithNotesFromJson(Map<String, dynamic> json) {
  return _DayWithNotes.fromJson(json);
}

/// @nodoc
mixin _$DayWithNotes {
  int get id => throw _privateConstructorUsedError;
  DateTime get date_time => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  List<Note> get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayWithNotesCopyWith<DayWithNotes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayWithNotesCopyWith<$Res> {
  factory $DayWithNotesCopyWith(
          DayWithNotes value, $Res Function(DayWithNotes) then) =
      _$DayWithNotesCopyWithImpl<$Res, DayWithNotes>;
  @useResult
  $Res call({int id, DateTime date_time, String time, List<Note> notes});
}

/// @nodoc
class _$DayWithNotesCopyWithImpl<$Res, $Val extends DayWithNotes>
    implements $DayWithNotesCopyWith<$Res> {
  _$DayWithNotesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date_time = null,
    Object? time = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date_time: null == date_time
          ? _value.date_time
          : date_time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayWithNotesImplCopyWith<$Res>
    implements $DayWithNotesCopyWith<$Res> {
  factory _$$DayWithNotesImplCopyWith(
          _$DayWithNotesImpl value, $Res Function(_$DayWithNotesImpl) then) =
      __$$DayWithNotesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime date_time, String time, List<Note> notes});
}

/// @nodoc
class __$$DayWithNotesImplCopyWithImpl<$Res>
    extends _$DayWithNotesCopyWithImpl<$Res, _$DayWithNotesImpl>
    implements _$$DayWithNotesImplCopyWith<$Res> {
  __$$DayWithNotesImplCopyWithImpl(
      _$DayWithNotesImpl _value, $Res Function(_$DayWithNotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date_time = null,
    Object? time = null,
    Object? notes = null,
  }) {
    return _then(_$DayWithNotesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date_time: null == date_time
          ? _value.date_time
          : date_time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayWithNotesImpl implements _DayWithNotes {
  _$DayWithNotesImpl(
      {required this.id,
      required this.date_time,
      required this.time,
      required final List<Note> notes})
      : _notes = notes;

  factory _$DayWithNotesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayWithNotesImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime date_time;
  @override
  final String time;
  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'DayWithNotes(id: $id, date_time: $date_time, time: $time, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayWithNotesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date_time, date_time) ||
                other.date_time == date_time) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date_time, time,
      const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayWithNotesImplCopyWith<_$DayWithNotesImpl> get copyWith =>
      __$$DayWithNotesImplCopyWithImpl<_$DayWithNotesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayWithNotesImplToJson(
      this,
    );
  }
}

abstract class _DayWithNotes implements DayWithNotes {
  factory _DayWithNotes(
      {required final int id,
      required final DateTime date_time,
      required final String time,
      required final List<Note> notes}) = _$DayWithNotesImpl;

  factory _DayWithNotes.fromJson(Map<String, dynamic> json) =
      _$DayWithNotesImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get date_time;
  @override
  String get time;
  @override
  List<Note> get notes;
  @override
  @JsonKey(ignore: true)
  _$$DayWithNotesImplCopyWith<_$DayWithNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
