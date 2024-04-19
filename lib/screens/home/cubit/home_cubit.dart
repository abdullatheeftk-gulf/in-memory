import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/app_constants/app_snack_bar/app_snack_bar.dart';
import 'package:in_memory/app_constants/data_error/data_error.dart';
import 'package:in_memory/app_constants/show_dialog/show_dialog.dart';
import 'package:in_memory/model/Note/note.dart';
import 'package:in_memory/repositories/firebase_auth_repository.dart';
import 'package:in_memory/repositories/shared_data_repositories.dart';
import 'package:in_memory/repositories/sqflite_repositories.dart';
import 'package:in_memory/screens/home/cubit/build_state/home_build_state.dart';
import 'package:in_memory/screens/home/cubit/listener_state/home_listener_state.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final SqfliteRepositories sqfliteRepositories;
  final SharedDataRepository sharedDataRepository;
  final FirebaseAuthRepository firebaseAuthRepository;

  //
  HomeCubit({
    required this.sqfliteRepositories,
    required this.sharedDataRepository,
    required this.firebaseAuthRepository,
  }) : super(HomeInitial()) {
    sharedDataRepository.getListStreamController().stream.listen((list) {
      emit(HomeBuildState(showProgressBar: false, result: list));
    });
  }

  // Get all Notes
  void getAllNotes() async {
    emit(const HomeBuildState(showProgressBar: true));

    final listOfNote = await sqfliteRepositories.getAllNotes();

    if (listOfNote is DataError) {
      final errorMessage = listOfNote.errorMessage;
      emit(HomeBuildState(showProgressBar: false, errorMessage: errorMessage));
      emit(HomeListenerState(appSnackBar: AppSnackBar(message: errorMessage)));
      return;
    }
    emit(HomeBuildState(showProgressBar: false, result: listOfNote));
  }

  void getAllDayWithNotes() async {
    emit(const HomeBuildState(showProgressBar: true));

    final listOfDayWithNotes = await sqfliteRepositories.getDayWithNotes();

    if (listOfDayWithNotes is DataError) {
      final errorMessage = listOfDayWithNotes.errorMessage;
      emit(HomeBuildState(showProgressBar: false, errorMessage: errorMessage));
      emit(HomeListenerState(appSnackBar: AppSnackBar(message: errorMessage)));
      return;
    }

    emit(HomeBuildState(showProgressBar: false, result: listOfDayWithNotes));
  }

  void deleteANote({required Note note}) async {
    emit(const HomeBuildState(showProgressBar: true));

    final deleteResult = await sqfliteRepositories.deleteANote(note: note);

    if (deleteResult is DataError) {
      final errorMessage = deleteResult.errorMessage;
      emit(HomeBuildState(showProgressBar: false, errorMessage: errorMessage));
      emit(HomeListenerState(
          appSnackBar: AppSnackBar(
              message: errorMessage,
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 5))));
      return;
    }

    final listDayWithNotes = await sqfliteRepositories.getDayWithNotes();

    if (listDayWithNotes is DataError) {
      final errorMessage = listDayWithNotes.errorMessage;
      emit(HomeBuildState(showProgressBar: false, errorMessage: errorMessage));
      emit(HomeListenerState(
          appSnackBar: AppSnackBar(
              message: errorMessage,
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 5))));
      return;
    }

    emit(HomeBuildState(showProgressBar: false, result: listDayWithNotes));
  }

  void showNoteDeleteDialog(Note note) {
    emit(HomeListenerState(showNoteDeleteDialog: ShowDialog(value: note)));

    // For dummy, to display again the dialog
    emit(const HomeBuildState(showProgressBar: false));
  }

  void firebaseSignOut() async {
    emit(const HomeBuildState(showProgressBar: false));

    // sign out
    final result = await firebaseAuthRepository.signOut();
    if (result is DataError) {
      final errorMessage = result.errorMessage;
      emit(HomeBuildState(showProgressBar: false, errorMessage: errorMessage));
      emit(HomeListenerState(
          appSnackBar: AppSnackBar(
              message: errorMessage,
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 5))));
      return;
    }


    // Set user information to null
    sharedDataRepository.addFirebaseUser(null);

    // Show dialog 
    emit(const HomeListenerState(
        navigateToRoute: "sign_in_screen"));
  }

  void showSignOutPermissionDialog(){
    emit(const HomeBuildState(showProgressBar: false));
    emit(const HomeListenerState(showSignoutDialog: ShowDialog(value: "Are you realy want to sign out?")));
  }
}
