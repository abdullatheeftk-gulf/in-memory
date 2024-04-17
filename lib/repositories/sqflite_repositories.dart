import 'package:in_memory/app_constants/constants.dart';
import 'package:in_memory/app_constants/data_error/data_error.dart';



import 'package:in_memory/main.dart';
import 'package:in_memory/model/Note/note.dart';
import 'package:in_memory/model/day_with_notes/day_with_notes.dart';
import 'package:sqflite/sqflite.dart';


class SqfliteRepositories {

  // Insert Note
  Future<dynamic> insertNote(
      {required String time, required String? title, required String? description, }) async {
    try {
      final count =
          await db.insert("Note", {"title": title, "description": description, "time":time});
      return count;
    } on DatabaseException catch(e){
        
        return DataError(errorMessage: e.toString());
    }
    catch (e) {
      
      return DataError(errorMessage: e.toString());
    }
  }

  Future<dynamic> insertDay({required String time }) async {
    try {
      final count =
          await db.insert("Day", {"time":time},conflictAlgorithm: ConflictAlgorithm.abort);
      return count;
    } on DatabaseException catch(e){
        if(e.isUniqueConstraintError()){
          return const DataError(errorMessage: uniqueConstraintError);
        }
        
        return DataError(errorMessage: e.toString());
    }
    catch (e) {
      
      return DataError(errorMessage: e.toString());
    }
  }


  // Get All Notes
  Future<dynamic> getAllNotes() async {
    try {
      final response = await db.query("Note",orderBy: "id DESC");
      
      final listOfNote = response.map((json) => Note.fromJson(json)).toList();
      return listOfNote;
    }
    on DatabaseException catch(e){
        
        return DataError(errorMessage: e.toString());
    }
     catch (e) {
      
      return DataError(errorMessage: e.toString());
    }
  }

  // Get Notes For a Day
  Future<dynamic> getDayWithNotes() async{
     final List<DayWithNotes> listOfDayWithNotes = [];
    try{
      final daysJsonList = await db.query('Day',orderBy:"id DESC" );
      //print(" getDayWithNotes daysJsonList");
      //printDebug(daysJsonList);

      for (final element in daysJsonList) {
        final notesJson = await db.query('Note',where:'time=?', whereArgs: [element["time"].toString()],orderBy:"id DESC");

      

        final notes = notesJson.map((json) => Note.fromJson(json)).toList();

        

        final dayWithNote = DayWithNotes(id:element["id"] as int, date_time: DateTime.parse(element['date_time'] as String),  time: element["time"].toString(), notes: notes,);

       

        listOfDayWithNotes.add(dayWithNote);

      }

     

      return listOfDayWithNotes;

    }on DatabaseException catch(e){
        
        return DataError(errorMessage: e.toString());
    }
     catch (e) {
      
      return DataError(errorMessage: e.toString());
    }
  }

  Future<dynamic> updateNote({required String? title, required String? description, required int id})  async{
    try {
      await db.update('Note',{"title":title,"description":description},where: "id=?",whereArgs: [id]);
      return "success";
    } on DatabaseException catch(e){
        
        return DataError(errorMessage: e.toString());
    }
     catch (e) {
      
      return DataError(errorMessage: e.toString());
    }
  }

  Future<dynamic> deleteANote({required Note note}) async{
    try{


      final result = await db.delete("Note",where: "id=?",whereArgs: [note.id]);

      if(result>0){
        final noteJson = await db.query("Note",where: "time=?",whereArgs: [note.time]);

        if(noteJson.isEmpty){
          await db.delete("Day",where: "time=?",whereArgs: [note.time]);

        }
        return "Success";
      }
      throw "Error";
    }on DatabaseException catch(e){

      return DataError(errorMessage: e.toString());
    }
    catch (e) {

      return DataError(errorMessage: e.toString());
    }
  }
}
