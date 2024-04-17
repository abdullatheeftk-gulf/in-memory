import 'package:flutter/material.dart';
import 'package:in_memory/model/day_with_notes/day_with_notes.dart';
import 'package:in_memory/screens/home/children/day_card/day_card.dart';

class DayWithNoteList extends StatelessWidget {
  final List<DayWithNotes> listOfDayWithNotes;
  const DayWithNoteList({super.key, required this.listOfDayWithNotes});

  @override
  Widget build(BuildContext context) {
    
    return ListView.separated(
      itemBuilder: (context, index) {
        if(index == listOfDayWithNotes.length){
          return const SizedBox(height: 100,);
        }
        
        return DayCard(dayWithNotes: listOfDayWithNotes[index]);
      },
      separatorBuilder: (context, index) {
        return const SizedBox();
      },
      itemCount: listOfDayWithNotes.length+1,
    );
  }
}
