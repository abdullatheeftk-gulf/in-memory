import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/app_constants/log/log_functions.dart';
import 'package:in_memory/model/Note/note.dart';

import 'package:in_memory/model/day_with_notes/day_with_notes.dart';
import 'package:in_memory/screens/add_edit_note/add_screen.dart';
import 'package:in_memory/screens/home/children/day_with_note_list.dart';
import 'package:in_memory/screens/home/children/empty_list.dart';

import 'package:in_memory/screens/home/cubit/build_state/home_build_state.dart';
import 'package:in_memory/screens/home/cubit/home_cubit.dart';
import 'package:in_memory/screens/home/cubit/listener_state/home_listener_state.dart';
import 'package:in_memory/screens/sign_in/sign_in_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeCubit _homeCubit;

  bool _showProgressBar = false;
  List<DayWithNotes>? _listOfDayWithNotes;

  String? _errorMessage;

  @override
  void initState() {
    _homeCubit = context.read<HomeCubit>();
    _homeCubit.getAllDayWithNotes();
    super.initState();
  }

  void _showDoYouWantDeleteDialog(Note note) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Row(
          children: [
            Icon(Icons.warning),
            Text("Do you want to delete this note",
                style: TextStyle(fontSize: 16)),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "No",
              style: TextStyle(color: Colors.red),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _homeCubit.deleteANote(note: note);
              Navigator.pop(context);
            },
            child: const Text(
              "Yes",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  // sign out permission dialog
  void _showSignOutpermissionDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Row(
          children: [
            Icon(Icons.warning),
            Text("Do you realy want to Sign out",
                style: TextStyle(fontSize: 16)),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "No",
              style: TextStyle(color: Colors.red),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _homeCubit.firebaseSignOut();
              Navigator.pop(context);
            },
            child: const Text(
              "Yes",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeListenerState) {
          printWarning("home Listener state $state");

          // Showing snackBar
          if (state.appSnackBar != null) {
            final appSnackBar = state.appSnackBar!;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(appSnackBar.message),
                duration: appSnackBar.duration,
                backgroundColor: appSnackBar.backgroundColor,
              ),
            );
          }

          // Showing delete permission dialog

          if (state.showNoteDeleteDialog != null) {
            _showDoYouWantDeleteDialog(
                state.showNoteDeleteDialog!.value as Note);
          }

          // to sign out
          if (state.showSignoutDialog != null) {
            _showSignOutpermissionDialog(state.showSignoutDialog!.value);
          }

          // Navigate
          if (state.navigateToRoute != null) {
            final route = state.navigateToRoute!;
            if (route == "sign_in_screen") {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const SignInscreen()),
                (route) => false,
              );
            }
          }
        }
      },
      listenWhen: (prev, cur) {
        if (cur is HomeListenerState) {
          return true;
        }
        return false;
      },
      buildWhen: (prev, cur) {
        if (cur is HomeBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        // State checking
        if (state is HomeBuildState) {
          _errorMessage = state.errorMessage;
          _showProgressBar = state.showProgressBar;
          if (state.result != null) {
            _listOfDayWithNotes = state.result;
          }
        }

        // Widget area
        return Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
          ),

          // Drawer
          drawer: Drawer(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _homeCubit.showSignOutPermissionDialog();
                  },
                  child: const Text("Sign Out"),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: 1,
            ),
          ),
          onDrawerChanged: (flag) {
            printDebug(flag);
          },

          //Floating Action button
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              _showProgressBar
                  ? const CircularProgressIndicator()
                  : const SizedBox(),
              FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AddScreen(
                            isEditMode: false,
                            title: null,
                            description: null,
                            id: null,
                          )));
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),

          // Body part
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Error message
              _errorMessage != null
                  ? Text(
                      _errorMessage!,
                      style:
                          TextStyle(color: Theme.of(context).colorScheme.error),
                    )
                  : const SizedBox(),

              // List display
              _listOfDayWithNotes != null
                  ? _listOfDayWithNotes!.isEmpty
                      ? const EmmptyList()
                      : Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: DayWithNoteList(
                              listOfDayWithNotes: _listOfDayWithNotes!,
                            ),
                          ),
                        )
                  : const SizedBox()
            ],
          ),
        );
      },
    );
  }
}
