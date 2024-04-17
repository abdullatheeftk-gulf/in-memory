import 'package:flutter/material.dart';
import 'package:in_memory/model/day_with_notes/day_with_notes.dart';
import 'package:in_memory/screens/home/children/note_list.dart';

class DayCard extends StatelessWidget {
  final DayWithNotes dayWithNotes;
  const DayCard({super.key, required this.dayWithNotes});

  @override
  Widget build(BuildContext context) {
    final notes = dayWithNotes.notes;
    return Card(
      shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.black12),borderRadius: BorderRadius.all(Radius.elliptical(10, 10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
              const SizedBox(height: 8,),
              Text(dayWithNotes.time,style: const  TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
              const Divider(),
              NoteList(list: notes)
          ],
          )
    );
  }
}