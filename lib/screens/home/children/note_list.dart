import 'package:flutter/material.dart';
import 'package:in_memory/model/Note/note.dart';
import 'package:in_memory/screens/home/children/note_list_tile/note_list_tile.dart';

class NoteList extends StatelessWidget {
  final List<Note> list;
  const NoteList({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(list.length, (index) => NoteListTile(note: list[index])),
    );
    
  }
}
