import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_memory/app_constants/date_format/date_format.dart';
import 'package:in_memory/app_constants/hide_keyboard_function/hide_keyboard_function.dart';
import 'package:in_memory/screens/add_edit_note/cubit/add_edit_cubit.dart';
import 'package:in_memory/screens/add_edit_note/cubit/build_state/add_edit_build_state.dart';
import 'package:in_memory/screens/add_edit_note/cubit/listener_state/add_edit_listener_state.dart';

class AddScreen extends StatefulWidget {
  final String? title;
  final String? description;
  final int? id;
  final bool isEditMode;

  const AddScreen(
      {super.key,
      required this.title,
      required this.description,
      required this.isEditMode,
      required this.id});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _showProgressBar = false;
  String? _errorMessage;

  late final AddEditCubit _addEditCubit;

  @override
  void initState() {
    _addEditCubit = context.read<AddEditCubit>();
    _titleController.value = TextEditingValue(text: widget.title ?? "");
    _descriptionController.value =
        TextEditingValue(text: widget.description ?? "");
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddEditCubit, AddEditState>(
      listener: (context, state) {
        if (state is AddEditListenerState) {
          // Navigation
          if (state.navigateToRoute != null) {
            Navigator.pop(context);
          }

          // Snackbar
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
        }
      },
      listenWhen: (prev, cur) {
        if (cur is AddEditListenerState) {
          return true;
        }
        return false;
      },
      buildWhen: (prev, cur) {
        if (cur is AddEditBuildState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        // check
        if (state is AddEditBuildState) {
          _errorMessage = state.errorMessage;
          _showProgressBar = state.showProgressBar;
        }

        return Scaffold(
          appBar: AppBar(
            title: Text(widget.isEditMode ? "Edit" : "Add"),
          ),

          // Floating action button

          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: _showProgressBar
              ? const CircularProgressIndicator()
              : const SizedBox(),

          // Body
          body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // title TextField
                  TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(
                        label: const Text("Title"),
                        hintText: "Enter title",
                        hintStyle:
                            TextStyle(color: Colors.black.withAlpha(100)),
                        border: const OutlineInputBorder()),
                    maxLength: 64,
                    maxLines: 1,
                    validator: (value) {
                      final titleText = _titleController.text.trim();
                      final descriptionText =
                          _descriptionController.text.trim();
                      if (titleText.isEmpty && descriptionText.isEmpty) {
                        if (titleText.isEmpty) {
                          return "Empty title is not allowed";
                        } else {
                          return null;
                        }
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                  // Description text field
                  Expanded(
                    child: TextFormField(
                      controller: _descriptionController,
                      decoration: InputDecoration(
                        label: const Text("description"),
                        hintText: "Enter description",
                        hintStyle: TextStyle(
                          color: Colors.black.withAlpha(100),
                        ),
                        border: const OutlineInputBorder(),
                        alignLabelWithHint: true,
                      ),
                      maxLength: 1028,
                      maxLines: null,
                      expands: true,
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.top,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.newline,
                      validator: (value) {
                        final titleText = _titleController.text.trim();
                        final descriptionText =
                            _descriptionController.text.trim();
                        if (titleText.isEmpty && descriptionText.isEmpty) {
                          if (descriptionText.isEmpty) {
                            return "Empty description is not allowed";
                          } else {
                            return null;
                          }
                        }
                        return null;
                      },
                    ),
                  ),

                  // Error display
                  _errorMessage == null
                      ? const SizedBox()
                      : Text(
                          "  $_errorMessage",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.error),
                        ),
                  const SizedBox(
                    height: 16,
                  ),

                  // Save button
                  ElevatedButton(
                    onPressed: _showProgressBar
                        ? null
                        : () {
                            hideKeyboard(context);
                            if (_formKey.currentState!.validate()) {
                              final title = _titleController.text.trim();
                              final description =
                                  _descriptionController.text.trim();
                              final time = formatDate(DateTime.now());

                              if (widget.isEditMode) {
                                if(widget.id==null){
                                  _addEditCubit.showSnackBar(message:"id is null");
                                  return;
                                }
                                _addEditCubit.updateNote(title: title, description: description, id: widget.id!);
                              } else {
                                _addEditCubit.insertNoteAndDay(
                                  title: title,
                                  description: description,
                                  time: time,
                                );
                              }
                            }
                          },
                    child: Text(widget.isEditMode ? "Update" : "Save"),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
