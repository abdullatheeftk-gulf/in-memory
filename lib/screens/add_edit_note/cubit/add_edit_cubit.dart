import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/app_constants/app_snack_bar/app_snack_bar.dart';
import 'package:in_memory/app_constants/constants.dart';
import 'package:in_memory/app_constants/data_error/data_error.dart';

import 'package:in_memory/repositories/shared_data_repositories.dart';
import 'package:in_memory/repositories/sqflite_repositories.dart';
import 'package:in_memory/screens/add_edit_note/cubit/build_state/add_edit_build_state.dart';
import 'package:in_memory/screens/add_edit_note/cubit/listener_state/add_edit_listener_state.dart';

part 'add_edit_state.dart';

class AddEditCubit extends Cubit<AddEditState> {
  final SqfliteRepositories sqfliteRepositories;
  final SharedDataRepository sharedDataRepository;

  AddEditCubit({
    required this.sqfliteRepositories,
    required this.sharedDataRepository,
  }) : super(AddEditInitialState());

  // Insert Note
  void insertNoteAndDay({
    required String time,
    required String? title,
    required String? description,
  }) async {
    emit(const AddEditBuildState(showProgressBar: true));

    final dayInsertResponse = await sqfliteRepositories.insertDay(time: time);

    if (dayInsertResponse is DataError) {
      final errorMessage = dayInsertResponse.errorMessage;
      // Continue if the error is not unique constraint error
      if (errorMessage != uniqueConstraintError) {
        emit(AddEditBuildState(
            showProgressBar: false, errorMessage: errorMessage));
        emit(AddEditListenerState(
            appSnackBar: AppSnackBar(
                message: errorMessage, backgroundColor: Colors.red)));
        return;
      }
    }

    final data = await sqfliteRepositories.insertNote(
      title: title,
      description: description,
      time: time,
    );

    if (data is DataError) {
      final errorMessage = data.errorMessage;
      emit(AddEditBuildState(
          showProgressBar: false, errorMessage: errorMessage));
      emit(AddEditListenerState(
          appSnackBar:
              AppSnackBar(message: errorMessage, backgroundColor: Colors.red)));
      return;
    }

    final listOfDayWithNotes = await sqfliteRepositories.getDayWithNotes();

    if (listOfDayWithNotes is DataError) {
      //print("listOfDayWithNotes");
      // printError(listOfDayWithNotes);

      final errorMessage = listOfDayWithNotes.errorMessage;
      emit(AddEditBuildState(
          showProgressBar: false, errorMessage: errorMessage));
      emit(AddEditListenerState(
          appSnackBar:
              AppSnackBar(message: errorMessage, backgroundColor: Colors.red)));
      return;
    }

    sharedDataRepository.addList(listOfDayWithNotes);

    emit(const AddEditListenerState(navigateToRoute: "pop"));
  }

  // Update Note

  void updateNote({
    required String? title,
    required String? description,
    required int id,
  })async {
    emit(const AddEditBuildState(showProgressBar: true));

    final updateResult = await sqfliteRepositories.updateNote(title: title, description: description, id: id);

    if(updateResult is DataError){
      final errorMessage = updateResult.errorMessage;
      emit(AddEditBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AddEditListenerState(appSnackBar: AppSnackBar(message: errorMessage,backgroundColor: Colors.red,duration: const Duration(seconds: 5),),),);
      return;
    }

    final listOfDayNotes = await sqfliteRepositories.getDayWithNotes();

    if(listOfDayNotes is DataError){
      final errorMessage = listOfDayNotes.errorMessage;
      emit(AddEditBuildState(showProgressBar: false,errorMessage: errorMessage));
      emit(AddEditListenerState(appSnackBar: AppSnackBar(message: errorMessage,backgroundColor: Colors.red,duration: const Duration(seconds: 5),),),);
      return;
    }

    sharedDataRepository.addList(listOfDayNotes);
    emit(const AddEditListenerState(navigateToRoute: "pop"));

  }

  void showSnackBar({required String message}) {
    emit(AddEditListenerState(appSnackBar: AppSnackBar(message: message,backgroundColor: Colors.red,duration:const  Duration(seconds: 5))));
  }
}
