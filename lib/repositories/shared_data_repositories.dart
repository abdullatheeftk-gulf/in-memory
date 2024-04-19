import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:in_memory/app_constants/log/log_functions.dart';
import 'package:in_memory/model/day_with_notes/day_with_notes.dart';

class SharedDataRepository{

  final StreamController<User?> _firebaseUserStreamController = StreamController();
  
  final StreamController<List<DayWithNotes>> _listOfNoteController = StreamController();
  

  void addList(List<DayWithNotes> list){
    _listOfNoteController.add(list);
  }

  StreamController<List<DayWithNotes>> getListStreamController() =>_listOfNoteController;

  void addFirebaseUser(User? user){
    printWarning("User shared");
      _firebaseUserStreamController.add(user);
  }

  StreamController<User?> getUserStreamController() => _firebaseUserStreamController;

}