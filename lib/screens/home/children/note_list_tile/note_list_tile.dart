import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_expandable_text/flutter_expandable_text.dart';
import 'package:in_memory/app_constants/date_format/get_time_from_date_time.dart';

import 'package:in_memory/app_constants/pop_menu/pop_menu.dart';
import 'package:in_memory/model/Note/note.dart';
import 'package:in_memory/screens/add_edit_note/add_screen.dart';
import 'package:in_memory/screens/home/cubit/home_cubit.dart';

class NoteListTile extends StatelessWidget {
  final Note note;

  const NoteListTile({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    // home cubit
    final HomeCubit homeCubit = context.read<HomeCubit>();

    // Date time
    final DateTime dateTime = note.date_time;
    final String time = getTimeFromDateTime(dateTime);

    // Widgets
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: (note.title == null || note.title!.isEmpty) ? 0 : 4,
              ),
              Text(
                time,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Platypi',
                    color: Color.fromARGB(255, 209, 99, 202)),
              ),
            ],
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: (note.title == null || note.title!.isEmpty)
                      ? const SizedBox()
                      : Text(
                          note.title!,
                          style: const TextStyle(
                              color: Color.fromARGB(221, 18, 18, 18),
                              fontSize: 16,
                              fontFamily: 'Platypi',
                              fontWeight: FontWeight.w500),
                        ),
                ),
                (note.title == null || note.title!.isEmpty)
                    ? const SizedBox(
                        height: 2,
                      )
                    : const SizedBox(),
                Container(
                  child: (note.description == null || note.description!.isEmpty)
                      ? const SizedBox()
                      : ExpandableText(
                          note.description!,
                          readMoreText: "more",
                          readLessText: "less",
                          trim: 5,
                          textAlign: TextAlign.justify,
                        ),
                ),
                SizedBox(
                  height: 16,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: PopupMenuButton<PopUpMenu>(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Colors.black45,
                      ),
                      iconSize: 18,
                      offset: const Offset(-30, 30),
                      onSelected: (cb) {
                        if (cb.name == PopUpMenu.edit.name) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AddScreen(
                                isEditMode: true,
                                title: note.title,
                                description: note.description,
                                id: note.id,
                              ),
                            ),
                          );
                        }
                        if (cb.name == PopUpMenu.delete.name) {
                         // homeCubit.deleteANote(note:note);
                          homeCubit.showDialog(note);
                        }
                      },
                      itemBuilder: (BuildContext context) {
                        return <PopupMenuEntry<PopUpMenu>>[
                          const PopupMenuItem<PopUpMenu>(
                            value: PopUpMenu.edit,
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          const PopupMenuItem<PopUpMenu>(
                            value: PopUpMenu.delete,
                            child: Text(
                              "Delete",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ];
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
