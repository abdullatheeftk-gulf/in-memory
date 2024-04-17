import 'dart:async';

import 'package:in_memory/model/day_with_notes/day_with_notes.dart';

class SharedDataRepository{
  
  final StreamController<List<DayWithNotes>> _listOfNoteController = StreamController();
  

  void addList(List<DayWithNotes> list){
    _listOfNoteController.add(list);
  }

  StreamController<List<DayWithNotes>> getListStreamController() =>_listOfNoteController;

}